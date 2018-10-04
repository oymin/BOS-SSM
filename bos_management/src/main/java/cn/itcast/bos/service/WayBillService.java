package cn.itcast.bos.service;

import java.util.List;

import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.take_delivery.WayBill;

public interface WayBillService {

	int save(WayBill wayBill);

	Integer findTotal(WayBill wayBill);

	List<WayBill> findPageData(WayBill wayBill);

	WayBill findByWayBillNum(String wayBillNum);

	int updateWayBill(WayBill wayBill);

}
