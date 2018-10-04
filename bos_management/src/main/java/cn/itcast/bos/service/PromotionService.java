package cn.itcast.bos.service;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.take_delivery.Promotion;
import cn.itcast.bos.pojo.take_delivery.PageBean;

public interface PromotionService {

	//保存宣传任务
	Result save(Promotion promotion);

	//总记录数
	Integer findTotal(Promotion promotion);

	//分页查询
	List<Promotion> findPageData(Promotion promotion);

	
	
	//----------------------cxf webservice-------------------
	
	//根据page和rows 返回前端页面分页数据
	@Path("/pageQuery")
	@GET
	@Produces({"application/xml","application/json"})
	PageBean<Promotion> findPageData(@QueryParam("page") int page,@QueryParam("rows") int rows);
	
	//根据Id查询数据
	@Path("/findById")
	@GET
	@Produces({"application/xml","application/json"})
	Promotion findById(@QueryParam("id") int id);
	
}
