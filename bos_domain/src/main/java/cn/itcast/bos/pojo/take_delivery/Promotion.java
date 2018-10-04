package cn.itcast.bos.pojo.take_delivery;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

import cn.itcast.bos.constant.Constans;

/**
 * @description:促销信息实体类
 */
@XmlRootElement(name = "promotion")
public class Promotion implements Serializable {

	private Integer id;
	private String title; // 宣传概要(标题)
	private String titleImg; // 宣传图片
	private String activeScope;// 活动范围
	private String startDate; // 发布时间
	private String endDate; // 失效时间
	private String updateTime; // 更新时间
	private String updateUnit; // 更新单位
	private String updateUser;// 更新人 后续与后台用户关联
	private String status = "1"; // 状态 可取值：1.进行中 2. 已结束
	private String description; // 宣传内容(活动描述信息)

	private Integer begin;
	private Integer end;

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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitleImg() {
		if(titleImg.startsWith("http")) {
			return titleImg;
		}
		return Constans.BOS_MANAGEMENT_URL + titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	public String getActiveScope() {
		return activeScope;
	}

	public void setActiveScope(String activeScope) {
		this.activeScope = activeScope;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public String getUpdateUnit() {
		return updateUnit;
	}

	public void setUpdateUnit(String updateUnit) {
		this.updateUnit = updateUnit;
	}

	public String getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDescription() {
		if(description.contains(Constans.BOS_MANAGEMENT_URL)) {
			return description;
		}
		return description.replace("src=\"", "src=\""+Constans.BOS_MANAGEMENT_URL);
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Promotion [id=" + id + ", title=" + title + ", titleImg=" + titleImg + ", activeScope=" + activeScope
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", updateTime=" + updateTime + ", updateUnit="
				+ updateUnit + ", updateUser=" + updateUser + ", status=" + status + ", description=" + description
				+ "]";
	}

}
