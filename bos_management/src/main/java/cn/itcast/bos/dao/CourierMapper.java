package cn.itcast.bos.dao;

import java.util.List;

import cn.itcast.bos.pojo.Courier;

public interface CourierMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Courier record);

    int insertSelective(Courier record);

    Courier selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Courier record);

    int updateByPrimaryKey(Courier record);

	int findTotal(Courier courier);

	List<Courier> findPageData(Courier courier);

	int doInvalidDatas(Integer[] ids);

	List<Courier> findAllWithNoAssociation();

	List<Courier> findAllCourierAssociationFixedArea(String fixedAreaId);
}