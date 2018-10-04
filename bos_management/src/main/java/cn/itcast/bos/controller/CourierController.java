package cn.itcast.bos.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.bos.pojo.Courier;
import cn.itcast.bos.pojo.EasyUIDataGridResult;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.service.CourierService;
import cn.itcast.bos.utils.PageUtil;

/**
 * 快递员controller
 * 
 * @author koax
 *
 */
@Controller
public class CourierController {

	@Autowired
	private CourierService sourierService;

	/**
	 * 添加快递员
	 * 
	 * @param courier
	 * @return
	 */
	@RequestMapping("/courier_save")
	public String save(Courier courier) {
		sourierService.save(courier);
		return "base/courier";
	}

	/**
	 * 分页查询
	 * 
	 * @param courier
	 * @return
	 */
	@RequestMapping("/courier_pageQuery")
	@ResponseBody
	public EasyUIDataGridResult pageQuery(Courier courier, Integer page, Integer rows) {
		// 查询总记录数
		int total = sourierService.findTotal(courier);
		// 查询数据
		PageUtil.setPage(page, rows, total);
		courier.setBegin(PageUtil.getResult()[0]);
		courier.setEnd(PageUtil.getResult()[1]);
		List<Courier> pageDataList = sourierService.findPageData(courier);
		EasyUIDataGridResult result = new EasyUIDataGridResult(total, pageDataList);
		return result;
	}
	
	/**
	 * 根据Id快递员
	 */
	@RequestMapping("/findCourierById")
	@ResponseBody
	public Courier findOneById(Integer id) {
		return sourierService.findOneById(id);
	}
	
	/**
	 * 快递员 批量作废
	 * 
	 * @param courier
	 * @return
	 */
	@RequestMapping("/courier_invalid")
	@ResponseBody
	public Result invalidDatas(final Integer[] ids) {
		Result result  = sourierService.doInvalidDatas(ids);
		return result;
	}
	
	/**
	 * 查询未关联定区快递员
	 */
	@RequestMapping("/courier_findnoassociation")
	@ResponseBody
	public List<Courier> indNoAssociationFixedarea(){
		List<Courier> list = sourierService.findAllWithNoAssociation();
		return list;
	}

}
