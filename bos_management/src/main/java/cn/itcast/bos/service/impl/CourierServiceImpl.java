package cn.itcast.bos.service.impl;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.bos.dao.CourierMapper;
import cn.itcast.bos.pojo.Courier;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.service.CourierService;

@Service
public class CourierServiceImpl implements CourierService {

	@Autowired
	private CourierMapper courierMapper;

	@Override
	@RequiresPermissions("courier_adds")
	public Result save(Courier courier) {
		courierMapper.insertSelective(courier);
		return Result.ok();
	}

	@Override
	public int findTotal(Courier courier) {
		return courierMapper.findTotal(courier);
	}

	@Override
	public List<Courier> findPageData(Courier courier) {
		return courierMapper.findPageData(courier);
	}

	@Override
	public Result doInvalidDatas(Integer[] ids) {
		courierMapper.doInvalidDatas(ids);
		return Result.ok();
	}

	@Override
	public List<Courier> findAllWithNoAssociation() {
		return courierMapper.findAllWithNoAssociation();
	}

	@Override
	public List<Courier> findAllCourierAssociationFixedArea(String fixedAreaId) {
		return courierMapper.findAllCourierAssociationFixedArea(fixedAreaId);
	}

	@Override
	public Courier findOneById(Integer id) {
		return courierMapper.selectByPrimaryKey(id);
	}
	
	
	
}
