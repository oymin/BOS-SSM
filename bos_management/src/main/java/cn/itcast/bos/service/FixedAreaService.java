package cn.itcast.bos.service;

import java.util.List;

import cn.itcast.bos.pojo.FixedArea;
import cn.itcast.bos.pojo.Result;

public interface FixedAreaService {

	Result save(FixedArea fixedArea);

	int findTotal(FixedArea fixedArea);

	List<FixedArea> findPageData(FixedArea fixedArea);

	Result doAssociationCourierToFixedArea(String id, Integer courierId, Integer takeTimeId);

	FixedArea selectByPrimaryKey(String fixedAreaId);

}
