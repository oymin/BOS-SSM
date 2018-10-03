package cn.itcast.bos.dao;

import java.util.List;

import cn.itcast.bos.pojo.Standard;

public interface StandardMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Standard standard);

    int insertSelective(Standard standard);

    Standard selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Standard standard);

    int updateByPrimaryKey(Standard standard);
    
    int findTotal(Standard standard);
    
    List<Standard> findPageData(Standard standard);

	int deleteByPrimaryKeys(Integer[] ids);
}