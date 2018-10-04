package cn.itcast.bos.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 页面的访问跳转
 * 
 * @author koax
 */
@Controller
public class PageController {

	@RequestMapping("/{page}")
	public String showPage(@PathVariable String page,HttpServletRequest request) {
		String requestURI = request.getRequestURI();
		StringBuffer requestURL = request.getRequestURL();
		System.out.println(page);
		return page;
	}
	
	
}
