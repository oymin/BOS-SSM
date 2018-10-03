package cn.itcast.bos.dao;

import java.util.List;

import cn.itcast.bos.pojo.TakeTime;

public interface TakeTimeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TakeTime record);

    int insertSelective(TakeTime record);

    TakeTime selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TakeTime record);

    int updateByPrimaryKey(TakeTime record);

	List<TakeTime> findAll();
}