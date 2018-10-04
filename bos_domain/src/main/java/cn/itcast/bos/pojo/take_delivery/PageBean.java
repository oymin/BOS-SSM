package cn.itcast.bos.pojo.take_delivery;

import java.io.Serializable;
import java.util.List;

/**
 * 前端项目页面分页数据 接收后端的包装类
 */
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSeeAlso;

@XmlRootElement(name = "pageBean")
@XmlSeeAlso({Promotion.class})
public class PageBean<T> implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer totalcount; // 总记录数
	private List<T> pageData; // 当前页数据

	public PageBean(Integer totalcount, List<T> pageData) {
		super();
		this.totalcount = totalcount;
		this.pageData = pageData;
	}

	public PageBean() {
		super();
	}

	public Integer getTotalcount() {
		return totalcount;
	}

	public void setTotalcount(Integer totalcount) {
		this.totalcount = totalcount;
	}

	public List<T> getPageData() {
		return pageData;
	}

	public void setPageData(List<T> pageData) {
		this.pageData = pageData;
	}

}
