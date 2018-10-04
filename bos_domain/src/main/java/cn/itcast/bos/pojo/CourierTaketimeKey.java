package cn.itcast.bos.pojo;

import java.io.Serializable;

/**
 * 快递员，收派事件关联表
 * 
 * @author koax
 *
 */
public class CourierTaketimeKey implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer courierId;// 快递员id
	
	private Integer takeTimeId;// 收派时间Id

	public CourierTaketimeKey() {
		super();
	}

	public CourierTaketimeKey(Integer courierId, Integer takeTimeId) {
		super();
		this.takeTimeId = takeTimeId;
		this.courierId = courierId;
	}

	public Integer getTakeTimeId() {
		return takeTimeId;
	}

	public void setTakeTimeId(Integer takeTimeId) {
		this.takeTimeId = takeTimeId;
	}

	public Integer getCourierId() {
		return courierId;
	}

	public void setCourierId(Integer courierId) {
		this.courierId = courierId;
	}

	@Override
	public String toString() {
		return "CourierTaketimeKey [takeTimeId=" + takeTimeId + ", courierId=" + courierId + "]";
	}

}
