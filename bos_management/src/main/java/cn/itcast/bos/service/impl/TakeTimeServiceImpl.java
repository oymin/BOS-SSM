package cn.itcast.bos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.bos.dao.TakeTimeMapper;
import cn.itcast.bos.pojo.TakeTime;
import cn.itcast.bos.service.TakeTimeService;

@Service
public class TakeTimeServiceImpl implements TakeTimeService {

	@Autowired
	private TakeTimeMapper takeTimeMapper;

	@Override
	public List<TakeTime> findAll() {
		return takeTimeMapper.findAll();
	}
	
	
	
}
