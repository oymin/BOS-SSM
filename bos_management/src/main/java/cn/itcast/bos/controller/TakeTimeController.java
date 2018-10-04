package cn.itcast.bos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.bos.pojo.TakeTime;
import cn.itcast.bos.service.TakeTimeService;

/**
 * 收派时间controller
 * @author koax
 *
 */
@Controller
public class TakeTimeController {
	
	@Autowired
	private TakeTimeService  takeTimeService;
	
	@RequestMapping("/taketime_findAll")
	@ResponseBody
	public List<TakeTime> findAll(){
		List<TakeTime> list = takeTimeService.findAll();
		return list;
	}
	
	
	
}
