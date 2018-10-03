package cn.itcast.bos.dao;

import java.util.List;

import cn.itcast.bos.pojo.FixedArea;

public interface FixedAreaMapper {
    int deleteByPrimaryKey(String id);

    int insert(FixedArea record);

    int insertSelective(FixedArea record);

    FixedArea selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(FixedArea record);

    int updateByPrimaryKey(FixedArea record);

	int findTotal(FixedArea fixedArea);

	List<FixedArea> findPageData(FixedArea fixedArea);

}