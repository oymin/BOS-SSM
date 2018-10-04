package cn.itcast.bos.service;

import java.util.List;

import cn.itcast.bos.pojo.Courier;
import cn.itcast.bos.pojo.FixedArea;
import cn.itcast.bos.pojo.Result;

public interface CourierService {

	Result save(Courier courier);

	int findTotal(Courier courier);

	List<Courier> findPageData(Courier courier);

	Result doInvalidDatas(Integer[] ids);
	
	List<Courier> findAllWithNoAssociation();

	List<Courier> findAllCourierAssociationFixedArea(String fixedAreaId);

	Courier findOneById(Integer id);
	
}
