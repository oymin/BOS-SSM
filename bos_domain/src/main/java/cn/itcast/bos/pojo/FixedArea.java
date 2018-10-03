package cn.itcast.bos.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * @description:定区
 */
public class FixedArea implements Serializable {
	private String id;// 主键

	private String company;// 所属单位

	private String fixedAreaLeader;// 定区负责人

	private String fixedAreaName;// 定区名称

	private String operatingCompany;// 操作单位

	private Date operatingTime;// 操作时间

	private String operator; // 操作员

	private String telephone;// 联系电话

	private Set<SubArea> subareas = new HashSet<SubArea>(0);// 分区

	private Set<Courier> couriers = new HashSet<Courier>(0);// 快递员

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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id == null ? null : id.trim();
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company == null ? null : company.trim();
	}

	public String getFixedAreaLeader() {
		return fixedAreaLeader;
	}

	public void setFixedAreaLeader(String fixedAreaLeader) {
		this.fixedAreaLeader = fixedAreaLeader == null ? null : fixedAreaLeader.trim();
	}

	public String getFixedAreaName() {
		return fixedAreaName;
	}

	public void setFixedAreaName(String fixedAreaName) {
		this.fixedAreaName = fixedAreaName == null ? null : fixedAreaName.trim();
	}

	public String getOperatingCompany() {
		return operatingCompany;
	}

	public void setOperatingCompany(String operatingCompany) {
		this.operatingCompany = operatingCompany == null ? null : operatingCompany.trim();
	}

	public Date getOperatingTime() {
		return operatingTime;
	}

	public void setOperatingTime(Date operatingTime) {
		this.operatingTime = operatingTime;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator == null ? null : operator.trim();
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone == null ? null : telephone.trim();
	}

	public Set<SubArea> getSubareas() {
		return subareas;
	}

	public void setSubareas(Set<SubArea> subareas) {
		this.subareas = subareas;
	}

	public Set<Courier> getCouriers() {
		return couriers;
	}

	public void setCouriers(Set<Courier> couriers) {
		this.couriers = couriers;
	}

}