package cn.itcast.bos.service;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

import cn.itcast.bos.pojo.take_delivery.Order;

public interface OrderService {

	//保存订单
	@Path("/order")
	@POST
	@Consumes({"application/xml","application/json"})
	public void saveOrder(Order order);

	public Order findByOrderNum(Order order);
	
}
