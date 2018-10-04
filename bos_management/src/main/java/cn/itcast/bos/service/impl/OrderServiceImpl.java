package cn.itcast.bos.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.jms.JMSException;
import javax.jms.MapMessage;
import javax.jms.Message;
import javax.jms.Session;
import javax.ws.rs.core.MediaType;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.cxf.jaxrs.client.WebClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Service;

import cn.itcast.bos.constant.Constans;
import cn.itcast.bos.dao.OrderMapper;
import cn.itcast.bos.dao.WorkBillMapper;
import cn.itcast.bos.pojo.Courier;
import cn.itcast.bos.pojo.SubArea;
import cn.itcast.bos.pojo.take_delivery.Order;
import cn.itcast.bos.pojo.take_delivery.WorkBill;
import cn.itcast.bos.service.CourierService;
import cn.itcast.bos.service.OrderService;
import cn.itcast.bos.service.SubAreaService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private CourierService courierService;
	@Autowired
	private WorkBillMapper workBillMapper;
	@Autowired
	private SubAreaService subAreaService;
	@Autowired
	@Qualifier(value="jmsQueueTemplate")
	private JmsTemplate jmsTemplate; 
	
	@Override
	public Order findByOrderNum(Order order) {
		return orderMapper.findPageData(order);
	}

	@Override
	public void saveOrder(Order order) {
		order.setOrderNum(UUID.randomUUID().toString()); // 设置订单号
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		order.setOrderTime(sdf.format(new Date()));// 设置下单时间
		order.setStatus("1"); // 待取件
		/**
		 * 自动分单1，基于CRM用户的地址完全匹配，获取定区，匹配快递员
		 */
		// 根据发件地址获取定区编码
		String fixedAreaId = WebClient.create(Constans.CRM_MANAGEMENT_URL
				+ "/services/customerService/customer/findFixedAreaIdByAddress?address=" + order.getSendAddress())
				.accept(MediaType.APPLICATION_JSON).get(String.class);
		if (StringUtils.isNotBlank(fixedAreaId)) {
			// 根据定区id获取所有 已关联定区的 快递员
			List<Courier> list = courierService.findAllCourierAssociationFixedArea(fixedAreaId);
			if (list.size() > 0) {
				Courier courier = list.get(0);
				// 自动分单 保存订单
				saveOrder(order, courier);
				// 生成工单 发送短信给快递员
				generateWorkBill(order,courier);
				return;
			}
		}
		
		/**
		 * 自动分单2 通过省市区 ，查询分区关键字，匹配地址，基于分区实现自动分单
		 */
		SubArea subArea = new SubArea();
		subArea.setAreaId(order.getSendAreaId());
		List<SubArea> subAreaList = subAreaService.findWithSubPageData(subArea);
		// 当前客户的下单地址 是否包含分区 关键字
		for (SubArea sub : subAreaList) {
			if(order.getSendAddress().contains(sub.getKeyWords())) {
				// 找打分区 ,找到定区id、根据定区找到快递员
				String fixedareaId2 = sub.getFixedareaId();
				if (StringUtils.isNotBlank(fixedareaId2)) {
					// 根据定区id获取所有 已关联定区的 快递员
					List<Courier> list = courierService.findAllCourierAssociationFixedArea(fixedAreaId);
					if (list.size() > 0) {
						Courier courier = list.get(0);
						// 自动分单 保存订单
						saveOrder(order, courier);
						// 生成工单 发送短信给快递员
						generateWorkBill(order,courier);
						return;
					}
				}
			}
		}
		// 当前客户的下单地址 是否包含分区 辅助关键字
		for (SubArea sub : subAreaList) {
			if(order.getSendAddress().contains(sub.getAssistKeyWords())) {
				// 找打分区 ,找到定区id、根据定区找到快递员
				String fixedareaId2 = sub.getFixedareaId();
				if (StringUtils.isNotBlank(fixedareaId2)) {
					// 根据定区id获取所有 已关联定区的 快递员
					List<Courier> list = courierService.findAllCourierAssociationFixedArea(fixedAreaId);
					if (list.size() > 0) {
						Courier courier = list.get(0);
						// 自动分单 保存订单
						saveOrder(order, courier);
						// 生成工单 发送短信给快递员
						generateWorkBill(order,courier);
						return;
					}
				}
			}
		}
		
		/**
		 * 没有匹配的快递员 进入人工分单
		 */
		order.setOrderType("2");
		orderMapper.insertSelective(order);
	}

	// 自动分单保存
	private void saveOrder(Order order, Courier courier) {
		// 将快递员关联订单上
		order.setCourierId(courier.getId());
		// 设置自动分单
		order.setOrderType("1");
		// 保存订单
		orderMapper.insertSelective(order);
	}

	// 生成工单，发送短信
	private void generateWorkBill(final Order order, Courier courier) {
		// 生成工单
		WorkBill workBill = new WorkBill();
		workBill.setType("新");
		workBill.setPickstate("新单");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		workBill.setBuildtime(sdf.format(new Date()));
		workBill.setRemark(order.getRemark());
		final String smsNumber = RandomStringUtils.randomNumeric(4);
		workBill.setSmsnumber(smsNumber); // 短信序号
		workBill.setOrderId(order.getId());
		workBill.setCourierId(order.getCourierId());

		// 发送短信
		// 调用MQ服务，发送一条消息
		jmsTemplate.send("bos_sms", new MessageCreator() {
			@Override
			public Message createMessage(Session session) throws JMSException {
				MapMessage mapMessage = session.createMapMessage();
				mapMessage.setString("telephone", courier.getTelephone());
				mapMessage.setString("msg", "短信序号：" + smsNumber + ",取件地址：" + order.getSendAddress() + ",联系人:"
						+ order.getSendName() + ",手机:" + order.getSendMobile() + "，快递员捎话：" + order.getSendMobileMsg());
				return mapMessage;
			}
		});

		// 修改工单状态
		workBill.setPickstate("已通知");
		workBillMapper.insertSelective(workBill);
	}

}
