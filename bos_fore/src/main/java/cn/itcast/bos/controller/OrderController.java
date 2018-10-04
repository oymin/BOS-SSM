package cn.itcast.bos.controller;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.core.MediaType;

import org.apache.cxf.jaxrs.client.WebClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.bos.constant.Constans;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.take_delivery.Order;
import cn.itcast.crm.domain.Customer;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@RequestMapping("order_add")
	@ResponseBody
	public Result add(Order order,HttpServletRequest request) {
		//关联当前登陆客户
		Customer customer = (Customer)request.getSession().getAttribute("customer");
		order.setCustomerId(customer.getId());
		
		//调用service 保存order
		WebClient.create(Constans.BOS_MANAGEMENT_URL+"/services/orderService/order")
		.type(MediaType.APPLICATION_JSON).post(order);
		
		return Result.ok();
	}
	
}
