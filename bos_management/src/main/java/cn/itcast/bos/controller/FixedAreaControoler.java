package cn.itcast.bos.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.ws.rs.core.MediaType;

import org.apache.commons.lang3.StringUtils;
import org.apache.cxf.jaxrs.client.WebClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.bos.pojo.EasyUIDataGridResult;
import cn.itcast.bos.pojo.FixedArea;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.service.FixedAreaService;
import cn.itcast.bos.utils.PageUtil;
import cn.itcast.crm.domain.Customer;

/**
 * 定区管理controller
 * 
 * @author koax
 */
@Controller
public class FixedAreaControoler {

	@Autowired
	private FixedAreaService fixedAreaService;

	@RequestMapping("/fixed_area_pageQuery")
	@ResponseBody
	public EasyUIDataGridResult pageQuery(FixedArea fixedArea, Integer page, Integer rows) {
		// 查询总记录数
		int total = fixedAreaService.findTotal(fixedArea);
		// 查询数据
		PageUtil.setPage(page, rows, total);
		fixedArea.setBegin(PageUtil.getResult()[0]);
		fixedArea.setEnd(PageUtil.getResult()[1]);
		List<FixedArea> pageDataList = fixedAreaService.findPageData(fixedArea);
		EasyUIDataGridResult result = new EasyUIDataGridResult(total, pageDataList);
		return result;
	}

	/**
	 * 添加定区信息
	 * 
	 * @param fixedArea
	 * @return
	 */
	@RequestMapping("/fixedArea_save")
	@ResponseBody
	public Result save(FixedArea fixedArea) {
		return fixedAreaService.save(fixedArea);
	}

	/**
	 * 查询未关联定区客户列表
	 * 
	 * @param fixedArea
	 * @return
	 */
	@RequestMapping("/fixedArea_findNoAssociationCustomers")
	@ResponseBody
	public List<Customer> findNoAssociationCustomers() {
		// 使用webClient调用webService接口
		Collection<? extends Customer> collection = WebClient.create("http://localhost:9002/services/customerService/noassociationcustomers")
				.accept(MediaType.APPLICATION_JSON)
				.getCollection(Customer.class);
		List<Customer> list= new ArrayList<>(collection);
		return list;
	}

	/**
	 * 查询已关联当前定区客户列表
	 */
	@RequestMapping("/fixedArea_findHasAssociationFixedAreaCustomers")
	@ResponseBody
	public List<Customer> findHasAssociationFixedAreaCustomers(String id) {
		Collection<? extends Customer> collection =
			WebClient.create("http://localhost:9002/services/customerService/associationfixedareacustomers/"+id)
					.accept(MediaType.APPLICATION_JSON)
					.getCollection(Customer.class);
		List<Customer> list= new ArrayList<>(collection);
		return list;
	}
	
	/**
	 * 关联用户到定区
	 */
	@RequestMapping("/fixedArea_associationCustomersToFixedArea")
	public String associationCustomersToFixedArea(String[] customerIds,String id) {
		String ids = StringUtils.join(customerIds, ",");
		WebClient.create("http://localhost:9002/services/customerService/associationcustomerstofixedarea?customerIdStr="+ids+"&fixedAreaId="+id).put(null);
		return "base/fixed_area";
	}
	
	/**
	 * 关联快递员到定区
	 */
	@RequestMapping("/fixedArea_associationCourierToFixedArea")
	@ResponseBody
	public Result associationCourierToFixedArea(String id,Integer courierId,Integer takeTimeId) {
			Result result = fixedAreaService.doAssociationCourierToFixedArea(id,courierId,takeTimeId);
		return Result.ok();
	}

}










