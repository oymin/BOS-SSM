package cn.itcast.bos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.take_delivery.Order;
import cn.itcast.bos.service.OrderService;

/**
 * 订单
 * @author koax
 */
@Controller
@RequestMapping("orderControl")
public class OrderController {

	@Autowired
	private OrderService orderService;
	
	@RequestMapping("/order_findByOrderNum")
	@ResponseBody
	public Result findByOrderNum(Order order) {
		Order order_ = orderService.findByOrderNum(order);
		return Result.ok(order_);
	}
	
}
