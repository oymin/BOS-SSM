package cn.itcast.bos.pojo.take_delivery;

import java.io.Serializable;

/**
 * @description:工单
 */
public class WorkBill implements Serializable {
	private Integer id;

	/*
	 * 新单:没有确认货物状态的 已通知:自动下单下发短信 已确认:接到短信,回复收信确认信息 已取件:已经取件成功,发回确认信息 生成工作单 已取消:销单
	 * 
	 */
	private String type;// 工单类型 新,追,销

	private String pickstate;// 取件状态

	private String buildtime;// 工单生成时间

	private String attachbilltimes;// 追单次数

	private String remark;// 订单备注

	private String smsnumber;// 短信序号

	private Integer courierId;// 快递员id

	private Integer orderId;// 订单id

	private static final long serialVersionUID = 1L;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type == null ? null : type.trim();
	}

	public String getPickstate() {
		return pickstate;
	}

	public void setPickstate(String pickstate) {
		this.pickstate = pickstate == null ? null : pickstate.trim();
	}

	public String getBuildtime() {
		return buildtime;
	}

	public void setBuildtime(String buildtime) {
		this.buildtime = buildtime == null ? null : buildtime.trim();
	}

	public String getAttachbilltimes() {
		return attachbilltimes;
	}

	public void setAttachbilltimes(String attachbilltimes) {
		this.attachbilltimes = attachbilltimes == null ? null : attachbilltimes.trim();
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark == null ? null : remark.trim();
	}

	public String getSmsnumber() {
		return smsnumber;
	}

	public void setSmsnumber(String smsnumber) {
		this.smsnumber = smsnumber == null ? null : smsnumber.trim();
	}

	public Integer getCourierId() {
		return courierId;
	}

	public void setCourierId(Integer courierId) {
		this.courierId = courierId;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	@Override
	public String toString() {
		return "WorkBill [id=" + id + ", type=" + type + ", pickstate=" + pickstate + ", buildtime=" + buildtime
				+ ", attachbilltimes=" + attachbilltimes + ", remark=" + remark + ", smsnumber=" + smsnumber
				+ ", courierId=" + courierId + ", orderId=" + orderId + "]";
	}

}