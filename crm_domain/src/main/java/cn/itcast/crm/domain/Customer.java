package cn.itcast.crm.domain;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * @description:客户信息表
 * 
 */
@XmlRootElement(name = "customer")
public class Customer implements Serializable {
	private Integer id;// 主键id

	private String username;// 用户名

	private String password;// 密码

	private Integer type;// 类型 设置1 绑定邮箱

	private String brithday;// 生日

	private Integer sex; // 性别 1男 2女

	private String telephone;// 手机

	private String company;// 公司

	private String department; // 部门

	private String position;// 职位

	private String address;// 地址

	private String mobilephone;// 座机

	private String email;// 邮箱

	private String fixedAreaId; // 定区编码

	private String checkCode; // 短信验证码

	private static final long serialVersionUID = 1L;

	public String getCheckCode() {
		return checkCode;
	}

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username == null ? null : username.trim();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getBrithday() {
		return brithday;
	}

	public void setBrithday(String brithday) {
		this.brithday = brithday == null ? null : brithday.trim();
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone == null ? null : telephone.trim();
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company == null ? null : company.trim();
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department == null ? null : department.trim();
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position == null ? null : position.trim();
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address == null ? null : address.trim();
	}

	public String getMobilephone() {
		return mobilephone;
	}

	public void setMobilephone(String mobilephone) {
		this.mobilephone = mobilephone == null ? null : mobilephone.trim();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

	public String getFixedAreaId() {
		return fixedAreaId;
	}

	public void setFixedAreaId(String fixedAreaId) {
		this.fixedAreaId = fixedAreaId == null ? null : fixedAreaId.trim();
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", username=" + username + ", password=" + password + ", type=" + type
				+ ", brithday=" + brithday + ", sex=" + sex + ", telephone=" + telephone + ", company=" + company
				+ ", department=" + department + ", position=" + position + ", address=" + address + ", mobilephone="
				+ mobilephone + ", email=" + email + ", fixedAreaId=" + fixedAreaId + "]";
	}

}