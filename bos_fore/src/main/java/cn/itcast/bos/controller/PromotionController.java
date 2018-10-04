package cn.itcast.bos.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.core.MediaType;

import org.apache.cxf.jaxrs.client.WebClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.bos.constant.Constans;
import cn.itcast.bos.pojo.take_delivery.PageBean;
import cn.itcast.bos.pojo.take_delivery.Promotion;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

/**
 * 前端宣传任务controller
 * 
 * @author koax
 */
@Controller
public class PromotionController {

	/**
	 * 页面分页查询
	 * @param page
	 * @param rows
	 * @return
	 */
	@RequestMapping("promotion_pageQuery")
	@ResponseBody
	public PageBean<Promotion> pageQuery(int page, int rows) {

		@SuppressWarnings("unchecked")
		PageBean<Promotion> pageBean = WebClient.create(
				Constans.BOS_MANAGEMENT_URL + "/services/promotionService/pageQuery?page=" + page + "&rows=" + rows)
				.accept(MediaType.APPLICATION_JSON).get(PageBean.class);

		return pageBean;
	}
	
	/**
	 * 宣传活动详情 freemark静态化
	 * @param page
	 * @return
	 * @throws IOException 
	 * @throws TemplateException 
	 */
	@RequestMapping("/promotion_showDetail/{id}")
	public String showPromotionDetail(@PathVariable int id,HttpServletRequest request) throws IOException, TemplateException {
		String realPath = request.getSession().getServletContext().getRealPath("/WEB-INF/pages/promotionDetail");
		
		File htmlFile = new File(realPath+"/"+id+".html");
		//如果html文件不存在，查询数据库，结合freemarker模板生成页面
		if(!htmlFile.exists()) {
			//根据id查询数据
			Promotion promotion = WebClient.create(
					Constans.BOS_MANAGEMENT_URL + "/services/promotionService/findById?id=" + id)
					.accept(MediaType.APPLICATION_JSON).get(Promotion.class);
			if(promotion != null) {
				//生成页面静态化
				Configuration configuration = new Configuration(Configuration.getVersion());
				//模板文件所在的目录路径
				configuration.setDirectoryForTemplateLoading(new File(request.getSession().getServletContext().getRealPath("/WEB-INF/template")));
				//获取模板
				Template template = configuration.getTemplate("promotion_detail.ftl");
				//动态数据对象
				Map<String, Object> data = new HashMap<>();
				data.put("promotion", promotion);
				Writer out = new FileWriter(htmlFile);
				//生成静态页面
				template.process(data, out);
			}
		}
		//存在，直接将文件返回
		return "promotionDetail/"+id;
	}

}









