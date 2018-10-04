package cn.itcast.bos.dao;

import cn.itcast.bos.pojo.CourierTaketimeKey;

public interface CourierTaketimeMapper {
    int deleteByPrimaryKey(CourierTaketimeKey key);

    int insert(CourierTaketimeKey record);

    int insertSelective(CourierTaketimeKey record);
}