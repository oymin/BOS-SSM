package cn.itcast.bos.pojo.take_delivery;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * @description:订单实体类
 */
@XmlRootElement(name = "order")
public class Order implements Serializable {
	private Integer id;// 主键

	private String orderNum;// 订单号

	private String telephone;// 来电号码

	private Integer customerId;// 客户id

	private String sendName;// 寄件人姓名

	private String sendMobile;// 寄件人电话

	private String sendCompany;// 寄件人公司

	private String sendAreaId;// 寄件人省市区信息id

	private String sendAddress;// 寄件人详细地址信息

	private String recName;// 收件人姓名

	private String recMobile;// 收件人电话

	private String recCompany;// 收件人公司

	private String recAreaId;// 收件人省市区信息

	private String recAddress;// 收件人详细地址信息

	private String sendProNum;// 快递产品类型编号：速运当日、速运次日、速运隔日

	private String goodsType;// 托寄物类型：文件、衣服 、食品、电子商品

	private String payTypeNum;// 支付类型编号：寄付日结、寄付月结、到付

	private Double weight;// 托寄物重量

	private String remark;// 备注

	private String sendMobileMsg;// 给快递员捎话

	private String orderType;// 分单类型 1 自动分单 2 人工分单

	private String status;// 订单状态 1 待取件 2 运输中 3 已签收 4 异常

	private String orderTime;// 下单时间

	private Integer courierId;// 运单

	private Integer waybillId;// 工单

	private Integer begin;

	private Integer end;

	private static final long serialVersionUID = 1L;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public String getSendName() {
		return sendName;
	}

	public void setSendName(String sendName) {
		this.sendName = sendName;
	}

	public String getSendMobile() {
		return sendMobile;
	}

	public void setSendMobile(String sendMobile) {
		this.sendMobile = sendMobile;
	}

	public String getSendCompany() {
		return sendCompany;
	}

	public void setSendCompany(String sendCompany) {
		this.sendCompany = sendCompany;
	}

	public String getSendAreaId() {
		return sendAreaId;
	}

	public void setSendAreaId(String sendAreaId) {
		this.sendAreaId = sendAreaId;
	}

	public String getSendAddress() {
		return sendAddress;
	}

	public void setSendAddress(String sendAddress) {
		this.sendAddress = sendAddress;
	}

	public String getRecName() {
		return recName;
	}

	public void setRecName(String recName) {
		this.recName = recName;
	}

	public String getRecMobile() {
		return recMobile;
	}

	public void setRecMobile(String recMobile) {
		this.recMobile = recMobile;
	}

	public String getRecCompany() {
		return recCompany;
	}

	public void setRecCompany(String recCompany) {
		this.recCompany = recCompany;
	}

	public String getRecAreaId() {
		return recAreaId;
	}

	public void setRecAreaId(String recAreaId) {
		this.recAreaId = recAreaId;
	}

	public String getRecAddress() {
		return recAddress;
	}

	public void setRecAddress(String recAddress) {
		this.recAddress = recAddress;
	}

	public String getSendProNum() {
		return sendProNum;
	}

	public void setSendProNum(String sendProNum) {
		this.sendProNum = sendProNum;
	}

	public String getGoodsType() {
		return goodsType;
	}

	public void setGoodsType(String goodsType) {
		this.goodsType = goodsType;
	}

	public String getPayTypeNum() {
		return payTypeNum;
	}

	public void setPayTypeNum(String payTypeNum) {
		this.payTypeNum = payTypeNum;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getSendMobileMsg() {
		return sendMobileMsg;
	}

	public void setSendMobileMsg(String sendMobileMsg) {
		this.sendMobileMsg = sendMobileMsg;
	}

	public String getOrderType() {
		return orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}

	public Integer getCourierId() {
		return courierId;
	}

	public void setCourierId(Integer courierId) {
		this.courierId = courierId;
	}

	public Integer getWaybillId() {
		return waybillId;
	}

	public void setWaybillId(Integer waybillId) {
		this.waybillId = waybillId;
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
		return "Order [id=" + id + ", orderNum=" + orderNum + ", telephone=" + telephone + ", customerId=" + customerId
				+ ", sendName=" + sendName + ", sendMobile=" + sendMobile + ", sendCompany=" + sendCompany
				+ ", sendAreaId=" + sendAreaId + ", sendAddress=" + sendAddress + ", recName=" + recName
				+ ", recMobile=" + recMobile + ", recCompany=" + recCompany + ", recAreaId=" + recAreaId
				+ ", recAddress=" + recAddress + ", sendProNum=" + sendProNum + ", goodsType=" + goodsType
				+ ", payTypeNum=" + payTypeNum + ", weight=" + weight + ", remark=" + remark + ", sendMobileMsg="
				+ sendMobileMsg + ", orderType=" + orderType + ", status=" + status + ", orderTime=" + orderTime
				+ ", courierId=" + courierId + ", waybillId=" + waybillId + "]";
	}

}