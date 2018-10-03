package cn.itcast.bos.utils;

import java.io.PrintWriter;
import java.io.StringWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class GlobalExceptionResolver implements HandlerExceptionResolver {

	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception e) {
		// 判断异常的种类
		String msg = null;
		// 如果是自定义异常，取错误消息
		if (e instanceof GlobalException) {
			GlobalException exp = (GlobalException) e;
			msg = exp.getMessage();
		} else {
			// 如果是运行时异常，取错误的堆栈
			e.printStackTrace();
			StringWriter s = new StringWriter();
			PrintWriter printWriter = new PrintWriter(s);
			e.printStackTrace(printWriter);
			msg = s.toString();
		}
		// 写日志，发短信，发邮件
		// 返回一个错误的页面，显示错误的消息
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("msg", msg);
		modelAndView.setViewName("error");
		return modelAndView;
	}

}
