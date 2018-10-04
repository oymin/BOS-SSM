package cn.itcast.bos.dao;

import java.util.List;

import cn.itcast.bos.pojo.Area;

public interface AreaMapper {
    int deleteByPrimaryKey(String id);

    int insert(Area record);

    int insertSelective(Area record);

    Area selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Area record);

    int updateByPrimaryKey(Area record);

	void saveBatch(List<?> areas);

	int findTotal(Area area);

	List<Area> findPageData(Area area);

	String getKey(Area area);
}