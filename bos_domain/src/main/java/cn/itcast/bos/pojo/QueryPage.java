package cn.itcast.bos.pojo;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * 接受分页的查询参数
 * page 前端请求的页数
 * rows 前端请求的数据数量
 */
public class QueryPage extends LinkedHashMap<String, Object> {
	private static final long serialVersionUID = 1L;

	private Integer limit; // 终止数
	private Integer offset; // 起始数
	private Integer page; // 页数

	public QueryPage(Map<String, Object> params) {
		this.putAll(params);

		// 分页参数
		page = Integer.parseInt(params.get("page").toString());
		//计算sql中limit 的参数
		limit = Integer.parseInt(params.get("rows").toString());
		offset = (page - 1) * limit; // 起始数
		this.put("limit", limit);
		this.put("offset", offset);

		// 防止SQL注入（因为sidx、order是通过拼接SQL实现排序的，会有SQL注入风险）
		/*
		 * String sidx = params.get("sidx").toString(); String order =
		 * params.get("order").toString(); this.put("sidx", SQLFilter.sqlInject(sidx));
		 * this.put("order", SQLFilter.sqlInject(order));
		 */
	}
	
	public Integer getLimit() {
		return limit;
	}

	public Integer getOffset() {
		return offset;
	}

	public Integer getPage() {
		return page;
	}

}
