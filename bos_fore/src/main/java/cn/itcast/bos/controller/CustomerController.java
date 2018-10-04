package cn.itcast.bos.controller;

import javax.jms.JMSException;
import javax.jms.MapMessage;
import javax.jms.Message;
import javax.jms.Session;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.MediaType;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.cxf.jaxrs.client.WebClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.bos.constant.Constans;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.utils.JedisClient;
import cn.itcast.bos.utils.MailUtils;
import cn.itcast.crm.domain.Customer;

@Controller
public class CustomerController {

	@Autowired
	private JedisClient jedisClient;
	@Autowired
	private JmsTemplate jmsTemplate;

	/**
	 * 发送短信验证码
	 * 
	 * @param telephone
	 * @return
	 */
	@RequestMapping("/customer_sendSms")
	@ResponseBody
	public Result sendSms(@RequestParam String telephone, HttpServletRequest request, HttpServletResponse response) {
		// 生成短信验证码
		String randomCode = RandomStringUtils.randomNumeric(4);
		
		System.out.println(randomCode);
		
		// 将短信验证码 报讯到session
		request.getSession().setAttribute(telephone, randomCode);
		// 保存到cookie
		Cookie cookie = new Cookie(telephone, randomCode);
		response.addCookie(cookie);

		//调用MQ服务，发送短信 sms系统接收mq消息
		jmsTemplate.send("bos_sms",new MessageCreator() {
			
			@Override
			public Message createMessage(Session session) throws JMSException {
				MapMessage mapMessage = session.createMapMessage();
				mapMessage.setString("telephone", telephone);
				mapMessage.setString("msg", randomCode);
				return mapMessage;
			}
		});
		
		// 调用sms发送短信
		/*try {
			// AliMessageUtils.sendSmsByHTTP(telephone, randomCode);
		} catch (Exception e) {
			throw new RuntimeException("短信验证失败！");
		}*/
		return Result.ok();
	}

	/**
	 * 用户注册
	 */
	@RequestMapping("/customer_regist")
	public String regist(Customer customer, HttpServletRequest request) {
		// 先校验短信验证码，如果不通过，跳回这测页面
		String checkCodeSession = (String) request.getSession().getAttribute(customer.getTelephone());
		if (checkCodeSession == null || !checkCodeSession.equals(customer.getCheckCode())) {
			return "signup";
		}
		// 密码md5加密
		String md5Password = DigestUtils.md5DigestAsHex(customer.getPassword().getBytes());
		customer.setPassword(md5Password);
		// 调用websercie，连接crm 保存客户信息
		WebClient.create("http://localhost:9002/services/customerService/customer").type(MediaType.APPLICATION_JSON)
				.post(customer);

		// 生成激活码
		String activeCode = RandomStringUtils.randomNumeric(32);
		String content = "尊敬的客户您好，请于24小时内，进行邮箱账户的绑定，点击下面地址完成绑定<br/>" + "<a href='" + MailUtils.activeUrl
				+ "?activecode=" + activeCode + "&telephone=" + customer.getTelephone() + "'>点击这里完成邮箱绑定！</a>";

		System.out.println("activeCode = " + activeCode);

		// 将激活码码保存到redis 设置时效
		jedisClient.set(customer.getTelephone(), activeCode);
		jedisClient.expire(customer.getTelephone(), 86400);
		// 发送一封激活邮件
		MailUtils.sendMail("速运快递激活邮件", content, customer.getEmail());

		return "signup-success";
	}

	/**
	 * 绑定邮箱
	 * @param activecode
	 * @param telephone
	 * @return
	 */
	@RequestMapping(value = "/customer_activeMail", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String activeMail(String activecode, String telephone) {
		// 判断激活码是否有效
		if (activecode == null || !activecode.equals(jedisClient.get(telephone))) {
			return "激活码失效";
		} else {
			// 激活码有效
			Customer customer = WebClient
					.create("http://localhost:9002/services/customerService/customer/telephone/" + telephone)
					.accept(MediaType.APPLICATION_JSON).get(Customer.class);

			// 没有绑定
			if (customer.getType() == null || customer.getType() != 1) {
				// 防止重复绑定 调用CRM webservice 查询客户信息，判断是否已经绑定
				WebClient.create("http://localhost:9002/services/customerService/customer/updatetype/" + telephone)
						.get();
				jedisClient.expire(telephone, 0);
			} else {
				return "该邮箱已绑定";
			}
		}

		return "激活成功";
	}
	
	/**
	 * 用户登陆
	 */
	@RequestMapping(value="/customer_login" , produces = "application/json" )
	@ResponseBody
	public Result loing(String telephone,String password,HttpServletRequest request) {
		System.out.println(telephone);
		String mdsPassword = DigestUtils.md5DigestAsHex(password.getBytes());
		Customer customer = WebClient.create(Constans.CRM_MANAGEMENT_URL
				+ "/services/customerService/customer/login?telephone="+telephone+"&password="+mdsPassword)
				.accept(MediaType.APPLICATION_JSON).get(Customer.class);
		
		if(customer == null)
			return Result.error();
		
		//将用户信息保存到session
		request.getSession().setAttribute("customer", customer);
		
		return Result.ok();
	}

}























