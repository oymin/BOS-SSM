package cn.itcast.bos.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.poi.ddf.EscherArrayProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.itcast.bos.pojo.EasyUIDataGridResult;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.take_delivery.Promotion;
import cn.itcast.bos.service.PromotionService;
import cn.itcast.bos.utils.PageUtil;

/**
 * 宣传任务
 * 
 * @author koax
 *
 */
@Controller
public class PromotionController {

	@Autowired
	private PromotionService promotionService;

	/**
	 * 添加宣传任务
	 * @param promotion
	 * @param titleImgFile
	 * @param request
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/promotion_save")
	@ResponseBody
	public Result save(Promotion promotion, MultipartFile titleImgFile, HttpServletRequest request) throws IOException {
		// 宣传图上传，在数据表保存宣传图路径
		String rootPath = request.getSession().getServletContext().getRealPath("/promotionImg") ;
		String rootUrl = request.getContextPath() + "/promotionImg/";

		//判断目录是否存在
		File mulu = new File(rootPath);
		if(!mulu.exists()) {
			mulu.mkdir();
		}
		
		//生成图片名称
		UUID uuid = UUID.randomUUID();
		String imgname = uuid + RandomStringUtils.randomNumeric(2);
		String originalFilename = titleImgFile.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		imgname = imgname + ext;
		
		//保存图片(绝对路径)
		FileUtils.writeByteArrayToFile(new File(mulu, imgname), titleImgFile.getBytes());
		promotion.setTitleImg(rootUrl+imgname);
		
		//调用业务层，完成活动任务数据保存
		return promotionService.save(promotion);
	}
	
	/**
	 * 分页显示查询任务
	 */
	@RequestMapping("/promotion_pageQuery")
	@ResponseBody
	public EasyUIDataGridResult pageQuery(Promotion promotion,Integer page,Integer rows) {
		//查询总数
		Integer total = promotionService.findTotal(promotion);
		PageUtil.setPage(page, rows, total);
		promotion.setBegin(PageUtil.getResult()[0]);
		promotion.setEnd(PageUtil.getResult()[1]);
		List<Promotion> list = promotionService.findPageData(promotion);
		
		return new EasyUIDataGridResult(total, list);
	}

}


















