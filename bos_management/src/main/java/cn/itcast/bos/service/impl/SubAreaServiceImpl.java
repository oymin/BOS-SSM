package cn.itcast.bos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.bos.dao.SubArchiveMapper;
import cn.itcast.bos.dao.SubAreaMapper;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.SubArea;
import cn.itcast.bos.service.SubAreaService;

@Service
public class SubAreaServiceImpl implements SubAreaService {
	
	@Autowired
	private SubAreaMapper subAreaMapper;

	@Override
	public Result saveBatch(List<?> subAreas) {
		subAreaMapper.saveBatch(subAreas);
		return Result.ok();
	}

	@Override
	public List<SubArea> findPageData(SubArea subarea) {
		return subAreaMapper.findPageData(subarea);
	}

	@Override
	public int findTotal(SubArea subarea) {
		return subAreaMapper.findTotal(subarea);
	}

	@Override
	public List<SubArea> findWithSubPageData(SubArea subArea) {
		return subAreaMapper.findWithSubPageData(subArea);
	}


}
