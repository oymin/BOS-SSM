package cn.itcast.bos.dao;

import cn.itcast.bos.pojo.FixedareaCourierKey;

public interface FixedareaCourierMapper {
    int deleteByPrimaryKey(FixedareaCourierKey key);

    int insert(FixedareaCourierKey record);

    int insertSelective(FixedareaCourierKey record);
}