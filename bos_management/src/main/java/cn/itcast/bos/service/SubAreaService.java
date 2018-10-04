package cn.itcast.bos.service;

import java.util.List;

import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.SubArea;

public interface SubAreaService {

	Result saveBatch(List<?> subAreas);

	List<SubArea> findPageData(SubArea subarea);

	int findTotal(SubArea subarea);

	List<SubArea> findWithSubPageData(SubArea subArea);

}
