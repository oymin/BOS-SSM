package cn.itcast.bos.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * @description:档案类，记录所有的分类信息，在子档中
 */
public class Archive implements Serializable {
	private Integer id; // 主键

	private String archiveName; // 档案名称

	private String archiveNum; // 档案编号

	private Integer haschild; // 是否分级 0代表不分级 1代表分级

	private String operatingCompany; // 操作单位

	private Date operatingTime; // 操作时间

	private String operator; // 操作员

	private String remark; // 备注

	private Set<SubArchive> subArchives = new HashSet(); // 子档案

	private Integer begin; // 分页查询起始数
	private Integer end; // 分页查询终止数

	private static final long serialVersionUID = 1L;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getArchiveName() {
		return archiveName;
	}

	public void setArchiveName(String archiveName) {
		this.archiveName = archiveName == null ? null : archiveName.trim();
	}

	public String getArchiveNum() {
		return archiveNum;
	}

	public void setArchiveNum(String archiveNum) {
		this.archiveNum = archiveNum == null ? null : archiveNum.trim();
	}

	public Integer getHaschild() {
		return haschild;
	}

	public void setHaschild(Integer haschild) {
		this.haschild = haschild;
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

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark == null ? null : remark.trim();
	}

	public Set<SubArchive> getSubArchives() {
		return subArchives;
	}

	public void setSubArchives(Set<SubArchive> subArchives) {
		this.subArchives = subArchives;
	}

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

	@Override
	public String toString() {
		return "Archive [id=" + id + ", archiveName=" + archiveName + ", archiveNum=" + archiveNum + ", haschild="
				+ haschild + ", operatingCompany=" + operatingCompany + ", operatingTime=" + operatingTime
				+ ", operator=" + operator + ", remark=" + remark + ", subArchives=" + subArchives + "]";
	}

}