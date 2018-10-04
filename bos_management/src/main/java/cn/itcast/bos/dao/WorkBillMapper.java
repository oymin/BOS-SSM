package cn.itcast.bos.dao;

import cn.itcast.bos.pojo.take_delivery.WorkBill;

public interface WorkBillMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WorkBill record);

    int insertSelective(WorkBill record);

    WorkBill selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WorkBill record);

    int updateByPrimaryKey(WorkBill record);
}