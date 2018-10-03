package cn.itcast.bos.pojo;

import java.io.Serializable;

/**
 * @description:车辆
 */
public class Vehicle implements Serializable {
	private Integer id;

	private String driver;// 司机

	private String remark;// 备注

	private String routeName;// 线路名称

	private String routeType; // 线路类型

	private String snipper; // 承运商

	private String telephone;// 电话

	private Integer ton; // 吨控

	private String vehicleNum;// 车牌号

	private String vehicleType;// 车型

	private Integer begin; // 分页查询起始数
	private Integer end; // 分页查询终止数

	private static final long serialVersionUID = 1L;

	public Integer getBegin() {
		return begin;
	}

	public void setBegin(Integer begin) {
		this.begin = begin;
	}

	public Integer getEnd() {
		return end;
	}

	public void setEnd(Integer end) {
		this.end = end;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver == null ? null : driver.trim();
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark == null ? null : remark.trim();
	}

	public String getRouteName() {
		return routeName;
	}

	public void setRouteName(String routeName) {
		this.routeName = routeName == null ? null : routeName.trim();
	}

	public String getRouteType() {
		return routeType;
	}

	public void setRouteType(String routeType) {
		this.routeType = routeType == null ? null : routeType.trim();
	}

	public String getSnipper() {
		return snipper;
	}

	public void setSnipper(String snipper) {
		this.snipper = snipper == null ? null : snipper.trim();
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone == null ? null : telephone.trim();
	}

	public Integer getTon() {
		return ton;
	}

	public void setTon(Integer ton) {
		this.ton = ton;
	}

	public String getVehicleNum() {
		return vehicleNum;
	}

	public void setVehicleNum(String vehicleNum) {
		this.vehicleNum = vehicleNum == null ? null : vehicleNum.trim();
	}

	public String getVehicleType() {
		return vehicleType;
	}

	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType == null ? null : vehicleType.trim();
	}

	@Override
	public String toString() {
		return "Vehicle [id=" + id + ", driver=" + driver + ", remark=" + remark + ", routeName=" + routeName
				+ ", routeType=" + routeType + ", snipper=" + snipper + ", telephone=" + telephone + ", ton=" + ton
				+ ", vehicleNum=" + vehicleNum + ", vehicleType=" + vehicleType + "]";
	}

}