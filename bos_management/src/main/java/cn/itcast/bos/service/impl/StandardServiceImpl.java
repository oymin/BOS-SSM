package cn.itcast.bos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.bos.dao.StandardMapper;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.Standard;
import cn.itcast.bos.service.StandardService;
/**
 * 收派标准管理
 */
@Service
public class StandardServiceImpl implements StandardService {
	
	@Autowired
	private StandardMapper standardMapper;

	@Override
	public Result save(Standard standard) {
		standardMapper.insert(standard);
		return Result.ok();
	}

	@Override
	public int findTotal(Standard standard) {
		return standardMapper.findTotal(standard);
	}

	@Override
	public List<Standard> findPageData(Standard standard) {
		
		return standardMapper.findPageData(standard);
	}

	@Override
	public Result doInvalidDatas(Integer[] ids) {
		standardMapper.deleteByPrimaryKeys(ids);
		return Result.ok();
	}

}
