package cn.itcast.bos.dao;

import java.util.List;

import cn.itcast.bos.pojo.take_delivery.Promotion;

public interface PromotionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Promotion record);

    int insertSelective(Promotion record);

    Promotion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Promotion record);

    int updateByPrimaryKey(Promotion record);

	Integer findTotal(Promotion promotion);

	List<Promotion> findPageData(Promotion promotion);

	void updateStatusQuartz(String time);
}