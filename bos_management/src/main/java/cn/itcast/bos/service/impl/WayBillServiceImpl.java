package cn.itcast.bos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.bos.dao.WayBillMapper;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.take_delivery.WayBill;
import cn.itcast.bos.service.WayBillService;

@Service
public class WayBillServiceImpl implements WayBillService {
	
	@Autowired
	private WayBillMapper wayBillMapper;

	@Override
	public int save(WayBill wayBill) {
		return wayBillMapper.insertSelective(wayBill);
	}

	@Override
	public Integer findTotal(WayBill wayBill) {
		return wayBillMapper.findTotal(wayBill);
	}

	@Override
	public List<WayBill> findPageData(WayBill wayBill) {
		return wayBillMapper.findPageData(wayBill);
	}

	@Override
	public WayBill findByWayBillNum(String wayBillNum) {
		return wayBillMapper.findByWayBillNum(wayBillNum);
	}

	@Override
	public int updateWayBill(WayBill wayBill) {
		return wayBillMapper.updateByPrimaryKey(wayBill);
	}
	
	
	
	
}
