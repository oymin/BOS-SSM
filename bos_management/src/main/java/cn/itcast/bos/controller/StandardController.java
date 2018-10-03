package cn.itcast.bos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.bos.pojo.EasyUIDataGridResult;
import cn.itcast.bos.pojo.QueryPage;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.Standard;
import cn.itcast.bos.service.StandardService;
import cn.itcast.bos.utils.PageUtil;

/**
 * 收派标准
 * 
 * @author koax
 */
@Controller
public class StandardController {

	// 注入Service对象
	@Autowired
	private StandardService standardService;

	/**
	 * 添加收派标准
	 * 
	 * @param standard
	 * @return
	 */
	@RequestMapping(value = "/standard_save")
	public String save(Standard standard) {

		standardService.save(standard);

		return "base/standard";
	}

	/**
	 * 分页列表查询
	 * 
	 * @return
	 */
	@RequestMapping(value = "/standard_pageQuery")
	@ResponseBody
	public EasyUIDataGridResult pageQuery(Standard standard, Integer page, Integer rows) {
		// 调用业务层，查询数据结果
		// 1.调用业务层，查询总记录数
		int total = standardService.findTotal(standard);
		// 2.调用业务层，查询当前页数据
		PageUtil.setPage(page, rows, total);
		standard.setBegin(PageUtil.getResult()[0]);
		standard.setEnd(PageUtil.getResult()[1]);
		List<Standard> pageDataList = standardService.findPageData(standard);
		EasyUIDataGridResult result = new EasyUIDataGridResult(total, pageDataList);
		return result;
	}

	/**
	 * 作废(invalid)数据
	 */
	@RequestMapping(value = "/standard_invalid")
	@ResponseBody
	public Result invalidDatas(final Integer[] ids) {
		return standardService.doInvalidDatas(ids);
	}

	/**
	 * 查询所有收派标准
	 * 
	 * @return
	 */
	@RequestMapping("/standard_findAll")
	@ResponseBody
	public List<Standard> findAllStandard() {
		return standardService.findPageData(null);
	}

}
