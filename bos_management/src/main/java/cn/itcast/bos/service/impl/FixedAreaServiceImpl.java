package cn.itcast.bos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.bos.dao.CourierMapper;
import cn.itcast.bos.dao.CourierTaketimeMapper;
import cn.itcast.bos.dao.FixedAreaMapper;
import cn.itcast.bos.dao.FixedareaCourierMapper;
import cn.itcast.bos.pojo.Courier;
import cn.itcast.bos.pojo.CourierTaketimeKey;
import cn.itcast.bos.pojo.FixedArea;
import cn.itcast.bos.pojo.FixedareaCourierKey;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.service.FixedAreaService;

@Service
public class FixedAreaServiceImpl implements FixedAreaService {

	@Autowired
	private FixedAreaMapper fixedAreaMapper;
	@Autowired
	private FixedareaCourierMapper fixedareaCourierMapper;
	@Autowired
	private CourierTaketimeMapper courierTaketimeMapper;
	@Autowired
	private CourierMapper courierMapper;

	@Override
	public Result save(FixedArea fixedArea) {
		fixedAreaMapper.insert(fixedArea);
		return Result.ok();
	}

	@Override
	public int findTotal(FixedArea fixedArea) {
		return fixedAreaMapper.findTotal(fixedArea);
	}

	@Override
	public List<FixedArea> findPageData(FixedArea fixedArea) {
		return fixedAreaMapper.findPageData(fixedArea);
	}

	/**
	 * 定区关联快递员
	 */
	@Override
	public Result doAssociationCourierToFixedArea(String id, Integer courierId, Integer takeTimeId) {
		FixedareaCourierKey fixedareaCourierKey = new FixedareaCourierKey(id,courierId);
		CourierTaketimeKey courierTaketimeKey = new CourierTaketimeKey(courierId,takeTimeId);
		//定区id 关联 快递员id 
		fixedareaCourierMapper.insert(fixedareaCourierKey);
		//快递员Id 关联 收派时间id
		courierTaketimeMapper.insert(courierTaketimeKey);
		//修改快递员状态为已关联
		Courier courier = new Courier();
		courier.setId(courierId);
		courier.setAssociationFixed(1);
		courierMapper.updateByPrimaryKeySelective(courier);
		
		return Result.ok();
	}

	@Override
	public FixedArea selectByPrimaryKey(String fixedAreaId) {
		return fixedAreaMapper.selectByPrimaryKey(fixedAreaId);
	}

}
