package cn.itcast.crm.service;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import cn.itcast.crm.domain.Customer;

/**
 * 客户操作
 * 
 * @author itcast
 *
 */
public interface CustomerService {

	// 查询所有未关联客户列表
	@Path("/noassociationcustomers")
	@GET
	@Produces({ "application/xml", "application/json" })
	public List<Customer> findNoAssociationCustomers();

	// 已经关联到指定定区的客户列表
	@Path("/associationfixedareacustomers/{fixedareaid}")
	@GET
	@Produces({ "application/xml", "application/json" })
	public List<Customer> findHasAssociationFixedAreaCustomers(@PathParam("fixedareaid") String fixedAreaId);

	// 将客户关联到定区上 ， 将所有客户id 拼成字符串 1,2,3
	@Path("/associationcustomerstofixedarea")
	@PUT
	public void associationCustomersToFixedArea(@QueryParam("customerIdStr") String customerIdStr,
			@QueryParam("fixedAreaId") String fixedAreaId);
	
	//用户注册保存信息
	@Path("/customer")
	@POST
	@Consumes({ "application/xml", "application/json" })
	public void regist(Customer customer);

	//根据手机号查询用户
	@Path("/customer/telephone/{telephone}")
	@GET
	@Produces({"application/xml", "application/json"})
	public Customer findByTelephone(@PathParam("telephone") String telephone);
	
	//修改类型 是否绑定邮箱
	@Path("/customer/updatetype/{telephone}")
	@GET
	@Consumes({"application/xml", "application/json"})
	public void updateType(@PathParam("telephone") String telephone);
	
	//用户登陆
	@Path("/customer/login")
	@GET
	@Consumes({"application/xml", "application/json"})
	public Customer login(@QueryParam("telephone") String telephone,@QueryParam("password") String password);
	
	//根据地址，获取定区编码
	@Path("/customer/findFixedAreaIdByAddress")
	@GET
	@Consumes({"application/xml", "application/json"})
	public String findFixedAreaIdByAddress(@QueryParam("address") String address);
	
}












