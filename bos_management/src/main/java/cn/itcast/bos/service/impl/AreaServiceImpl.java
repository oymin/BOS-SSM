package cn.itcast.bos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.bos.dao.AreaMapper;
import cn.itcast.bos.pojo.Area;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.service.AreaService;

@Service
public class AreaServiceImpl implements AreaService{
	
	@Autowired
	private AreaMapper areaMapper;

	@Override
	public Result saveBatch(List<?> areas) {
		areaMapper.saveBatch(areas);
		return Result.ok();
	}

	@Override
	public int findTotal(Area area) {
		return areaMapper.findTotal(area);
	}

	@Override
	public List<Area> findPageData(Area area) {
		return areaMapper.findPageData(area);
	}

	@Override
	public String getKey(Area area) {
		return areaMapper.getKey(area);
	}

}
