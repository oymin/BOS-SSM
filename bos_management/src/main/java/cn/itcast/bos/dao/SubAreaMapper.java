package cn.itcast.bos.dao;

import java.util.List;

import cn.itcast.bos.pojo.SubArea;

public interface SubAreaMapper {
    int deleteByPrimaryKey(String id);

    int insert(SubArea record);

    int insertSelective(SubArea record);

    SubArea selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(SubArea record);

    int updateByPrimaryKey(SubArea record);

	int saveBatch(List<?> subAreas);

	List<SubArea> findPageData(SubArea subarea);

	int findTotal(SubArea subarea);

	List<SubArea> findWithSubPageData(SubArea subArea);
}