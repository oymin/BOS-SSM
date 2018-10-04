package cn.itcast.bos.pojo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * @description:快递员
 */
public class Courier implements Serializable {
	private Integer id;// 主键

	private String checkPwd;// 查台密码

	private String company; // 单位

	private String courierNum;// 快递员工号

	private String deltag;// 作废标志 1 为标记作废

	private String name;// 快递员姓名

	private String pda;// PDA号

	private String telephone;// 快递员联系电话

	private String type;// 取件员类型

	private String vehicleNum; // 车牌号

	private String vehicleType;// 车辆类型

	private Integer standardId;// 收派标准关联id

	private Integer taketimeId;// 取派时间关联id

	private Integer associationFixed;// 是否关联定区 0没有，1已关联

	private Integer begin; // 分页查询起始数
	private Integer end; // 分页查询终止数

	private Set<FixedArea> fixedAreas = new HashSet<FixedArea>();

	private static final long serialVersionUID = 1L;

	public Integer getAssociationFixed() {
		return associationFixed;
	}

	public void setAssociationFixed(Integer associationFixed) {
		this.associationFixed = associationFixed;
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

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCheckPwd() {
		return checkPwd;
	}

	public void setCheckPwd(String checkPwd) {
		this.checkPwd = checkPwd == null ? null : checkPwd.trim();
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company == null ? null : company.trim();
	}

	public String getCourierNum() {
		return courierNum;
	}

	public void setCourierNum(String courierNum) {
		this.courierNum = courierNum == null ? null : courierNum.trim();
	}

	public String getDeltag() {
		return deltag;
	}

	public void setDeltag(String deltag) {
		this.deltag = deltag == null ? null : deltag.trim();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getPda() {
		return pda;
	}

	public void setPda(String pda) {
		this.pda = pda == null ? null : pda.trim();
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone == null ? null : telephone.trim();
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type == null ? null : type.trim();
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

	public Integer getStandardId() {
		return standardId;
	}

	public void setStandardId(Integer standardId) {
		this.standardId = standardId;
	}

	public Integer getTaketimeId() {
		return taketimeId;
	}

	public void setTaketimeId(Integer taketimeId) {
		this.taketimeId = taketimeId;
	}

	public Set<FixedArea> getFixedAreas() {
		return fixedAreas;
	}

	public void setFixedAreas(Set<FixedArea> fixedAreas) {
		this.fixedAreas = fixedAreas;
	}

	@Override
	public String toString() {
		return "Courier [id=" + id + ", checkPwd=" + checkPwd + ", company=" + company + ", courierNum=" + courierNum
				+ ", deltag=" + deltag + ", name=" + name + ", pda=" + pda + ", telephone=" + telephone + ", type="
				+ type + ", vehicleNum=" + vehicleNum + ", vehicleType=" + vehicleType + ", standardId=" + standardId
				+ ", taketimeId=" + taketimeId + ", associationFixed=" + associationFixed + "]";
	}

}