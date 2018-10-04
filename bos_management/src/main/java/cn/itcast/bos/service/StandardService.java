package cn.itcast.bos.service;

import java.util.List;

import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.Standard;

/**
 * 收派标准管理
 * @author koax
 */
public interface StandardService {

	public Result save(Standard standard);
	
	//查询数据总记录数
	public int findTotal(Standard standard);
	
	//查询分页的数据
	public List<Standard> findPageData(Standard standard);

	//作废数据
	public Result doInvalidDatas(Integer[] ids);
	
}
