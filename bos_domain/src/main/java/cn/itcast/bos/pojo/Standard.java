package cn.itcast.bos.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * @description:收派标准
 */
public class Standard implements Serializable {
	private Integer id;// 主键

	private Integer maxLength;// 最大长度

	private Integer maxWeight;// 最大重量

	private Integer minLength;// 最小长度

	private Integer minWeight;// 最小重量

	private String name;// 标准名称

	private String operatingCompany;// 操作单位

	private Date operatingTime;// 操作时间

	private String operator;// 操作员

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

	public Integer getMaxLength() {
		return maxLength;
	}

	public void setMaxLength(Integer maxLength) {
		this.maxLength = maxLength;
	}

	public Integer getMaxWeight() {
		return maxWeight;
	}

	public void setMaxWeight(Integer maxWeight) {
		this.maxWeight = maxWeight;
	}

	public Integer getMinLength() {
		return minLength;
	}

	public void setMinLength(Integer minLength) {
		this.minLength = minLength;
	}

	public Integer getMinWeight() {
		return minWeight;
	}

	public void setMinWeight(Integer minWeight) {
		this.minWeight = minWeight;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
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

	@Override
	public String toString() {
		return "Standard [id=" + id + ", maxLength=" + maxLength + ", maxWeight=" + maxWeight + ", minLength="
				+ minLength + ", minWeight=" + minWeight + ", name=" + name + ", operatingCompany=" + operatingCompany
				+ ", operatingTime=" + operatingTime + ", operator=" + operator + "]";
	}

}