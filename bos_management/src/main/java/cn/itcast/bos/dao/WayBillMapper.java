package cn.itcast.bos.dao;

import java.util.List;

import cn.itcast.bos.pojo.take_delivery.WayBill;

public interface WayBillMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WayBill record);

    int insertSelective(WayBill record);

    WayBill selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WayBill record);

    int updateByPrimaryKey(WayBill record);

	Integer findTotal(WayBill wayBill);

	List<WayBill> findPageData(WayBill wayBill);

	WayBill findByWayBillNum(String wayBillNum);

}