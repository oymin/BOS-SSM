package cn.itcast.bos.service;

import java.util.List;

import cn.itcast.bos.pojo.Area;
import cn.itcast.bos.pojo.Result;

public interface AreaService {

	Result saveBatch(List<?> areas);

	int findTotal(Area area);

	List<Area> findPageData(Area area);

	/**
	 * 获取主键id
	 * @param area
	 * @return
	 */
	String getKey(Area area);
	
	
}
