package cn.itcast.bos.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * @description:子档案类，记录了档案分级后的子信息
 */
public class SubArchive implements Serializable {
	private Integer id; // 主键

	private String mnemonicode;// 助记码

	private String mothballed;// 封存标志

	private String operatingCompany;// 操作单位

	private Date operatingTime;// 操作时间

	private String operator;// 操作员

	private String remark;// 备注

	private String subArchiveName;// 子档名称

	private Integer archiveId;// 关联基本档案信息id

	private Archive archive; // 关联基本档案信息

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

	public String getMnemonicode() {
		return mnemonicode;
	}

	public void setMnemonicode(String mnemonicode) {
		this.mnemonicode = mnemonicode == null ? null : mnemonicode.trim();
	}

	public String getMothballed() {
		return mothballed;
	}

	public void setMothballed(String mothballed) {
		this.mothballed = mothballed == null ? null : mothballed.trim();
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

	public String getSubArchiveName() {
		return subArchiveName;
	}

	public void setSubArchiveName(String subArchiveName) {
		this.subArchiveName = subArchiveName == null ? null : subArchiveName.trim();
	}

	public Integer getArchiveId() {
		return archiveId;
	}

	public void setArchiveId(Integer archiveId) {
		this.archiveId = archiveId;
	}

	public Archive getArchive() {
		return archive;
	}

	public void setArchive(Archive archive) {
		this.archive = archive;
	}

	@Override
	public String toString() {
		return "SubArchive [id=" + id + ", mnemonicode=" + mnemonicode + ", mothballed=" + mothballed
				+ ", operatingCompany=" + operatingCompany + ", operatingTime=" + operatingTime + ", operator="
				+ operator + ", remark=" + remark + ", subArchiveName=" + subArchiveName + ", archiveId=" + archiveId
				+ ", archive=" + archive + "]";
	}

}