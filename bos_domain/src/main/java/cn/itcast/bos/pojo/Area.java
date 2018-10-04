package cn.itcast.bos.pojo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * @description:地域信息实体类，主要包含 省市区(县)
 */
public class Area implements Serializable {
	private String id;

	private String city;// 城市

	private String citycode;// 城市编码

	private String district; // 区域

	private String postcode;// 邮编

	private String province;// 省

	private String shortcode;// 简码

	private Set<SubArea> subareas = new HashSet<SubArea>();

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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id == null ? null : id.trim();
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city == null ? null : city.trim();
	}

	public String getCitycode() {
		return citycode;
	}

	public void setCitycode(String citycode) {
		this.citycode = citycode == null ? null : citycode.trim();
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district == null ? null : district.trim();
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode == null ? null : postcode.trim();
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province == null ? null : province.trim();
	}

	public String getShortcode() {
		return shortcode;
	}

	public void setShortcode(String shortcode) {
		this.shortcode = shortcode == null ? null : shortcode.trim();
	}

	public Set<SubArea> getSubareas() {
		return subareas;
	}

	public void setSubareas(Set<SubArea> subareas) {
		this.subareas = subareas;
	}

	@Override
	public String toString() {
		return "Area [id=" + id + ", city=" + city + ", citycode=" + citycode + ", district=" + district + ", postcode="
				+ postcode + ", province=" + province + ", shortcode=" + shortcode + ", subareas=" + subareas + "]";
	}

}