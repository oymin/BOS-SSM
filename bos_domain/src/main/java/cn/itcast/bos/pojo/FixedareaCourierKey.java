package cn.itcast.bos.pojo;

import java.io.Serializable;

/**
 * 定区，快递员关联表
 */
public class FixedareaCourierKey implements Serializable {
	private String fixedAreaId;// 定区Id

	private Integer courierId;// 快递员id

	private static final long serialVersionUID = 1L;

	public FixedareaCourierKey() {
		super();
	}

	public FixedareaCourierKey(String fixedAreaId, Integer courierId) {
		super();
		this.fixedAreaId = fixedAreaId;
		this.courierId = courierId;
	}

	public String getFixedAreaId() {
		return fixedAreaId;
	}

	public void setFixedAreaId(String fixedAreaId) {
		this.fixedAreaId = fixedAreaId == null ? null : fixedAreaId.trim();
	}

	public Integer getCourierId() {
		return courierId;
	}

	public void setCourierId(Integer courierId) {
		this.courierId = courierId;
	}
}