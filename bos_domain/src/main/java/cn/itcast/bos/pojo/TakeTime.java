package cn.itcast.bos.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * @description:收派时间管理
 */
public class TakeTime implements Serializable {
	private Integer id;// 主键

	private String company; // 所属公司

	private String name; // 收派时间名称

	private String normalDutyTime;// 平常下班时间

	private String normalWorkTime;// 平常上班时间

	private String operatingCompany;// 操作单位

	private Date operatingTime;// 操作时间

	private String operator;// 操作员

	private String satDutyTime;// 周六下班时间

	private String satWorkTime; // 周六上班时间

	private String status;// 状态

	private String sunDutyTime;// 周日下班时间

	private String sunWorkTime;// 周日上班时间

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

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company == null ? null : company.trim();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getNormalDutyTime() {
		return normalDutyTime;
	}

	public void setNormalDutyTime(String normalDutyTime) {
		this.normalDutyTime = normalDutyTime == null ? null : normalDutyTime.trim();
	}

	public String getNormalWorkTime() {
		return normalWorkTime;
	}

	public void setNormalWorkTime(String normalWorkTime) {
		this.normalWorkTime = normalWorkTime == null ? null : normalWorkTime.trim();
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

	public String getSatDutyTime() {
		return satDutyTime;
	}

	public void setSatDutyTime(String satDutyTime) {
		this.satDutyTime = satDutyTime == null ? null : satDutyTime.trim();
	}

	public String getSatWorkTime() {
		return satWorkTime;
	}

	public void setSatWorkTime(String satWorkTime) {
		this.satWorkTime = satWorkTime == null ? null : satWorkTime.trim();
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status == null ? null : status.trim();
	}

	public String getSunDutyTime() {
		return sunDutyTime;
	}

	public void setSunDutyTime(String sunDutyTime) {
		this.sunDutyTime = sunDutyTime == null ? null : sunDutyTime.trim();
	}

	public String getSunWorkTime() {
		return sunWorkTime;
	}

	public void setSunWorkTime(String sunWorkTime) {
		this.sunWorkTime = sunWorkTime == null ? null : sunWorkTime.trim();
	}

	@Override
	public String toString() {
		return "TakeTime [id=" + id + ", company=" + company + ", name=" + name + ", normalDutyTime=" + normalDutyTime
				+ ", normalWorkTime=" + normalWorkTime + ", operatingCompany=" + operatingCompany + ", operatingTime="
				+ operatingTime + ", operator=" + operator + ", satDutyTime=" + satDutyTime + ", satWorkTime="
				+ satWorkTime + ", status=" + status + ", sunDutyTime=" + sunDutyTime + ", sunWorkTime=" + sunWorkTime
				+ "]";
	}

}