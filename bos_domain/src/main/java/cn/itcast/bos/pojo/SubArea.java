package cn.itcast.bos.pojo;

import java.io.Serializable;

/**
 * @description:分区
 */
public class SubArea implements Serializable {
	private String id;

	private String assistKeyWords; // 辅助关键字

	private String endnum;// 终止号

	private String keyWords;// 关键字

	private String single;// 单双号

	private String startNum; // 起始号

	private String areaId; // 区域id

	private Area area; // 区域

	private String fixedareaId;// 定区id

	private FixedArea fixedArea; // 定区

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

	public String getAssistKeyWords() {
		return assistKeyWords;
	}

	public void setAssistKeyWords(String assistKeyWords) {
		this.assistKeyWords = assistKeyWords == null ? null : assistKeyWords.trim();
	}

	public String getEndnum() {
		return endnum;
	}

	public void setEndnum(String endnum) {
		this.endnum = endnum == null ? null : endnum.trim();
	}

	public String getKeyWords() {
		return keyWords;
	}

	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords == null ? null : keyWords.trim();
	}

	public String getSingle() {
		return single;
	}

	public void setSingle(String single) {
		this.single = single == null ? null : single.trim();
	}

	public String getStartNum() {
		return startNum;
	}

	public void setStartNum(String startNum) {
		this.startNum = startNum == null ? null : startNum.trim();
	}

	public String getAreaId() {
		return areaId;
	}

	public void setAreaId(String areaId) {
		this.areaId = areaId == null ? null : areaId.trim();
	}

	public String getFixedareaId() {
		return fixedareaId;
	}

	public void setFixedareaId(String fixedareaId) {
		this.fixedareaId = fixedareaId == null ? null : fixedareaId.trim();
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	public FixedArea getFixedArea() {
		return fixedArea;
	}

	public void setFixedArea(FixedArea fixedArea) {
		this.fixedArea = fixedArea;
	}

	@Override
	public String toString() {
		return "SubArea [id=" + id + ", assistKeyWords=" + assistKeyWords + ", endnum=" + endnum + ", keyWords="
				+ keyWords + ", single=" + single + ", startNum=" + startNum + ", areaId=" + areaId + ", area=" + area
				+ ", fixedareaId=" + fixedareaId + ", fixedArea=" + fixedArea + "]";
	}

}