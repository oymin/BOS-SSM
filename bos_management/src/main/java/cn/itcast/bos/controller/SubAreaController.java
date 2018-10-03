package cn.itcast.bos.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.itcast.bos.pojo.Area;
import cn.itcast.bos.pojo.EasyUIDataGridResult;
import cn.itcast.bos.pojo.SubArea;
import cn.itcast.bos.service.AreaService;
import cn.itcast.bos.service.SubAreaService;
import cn.itcast.bos.utils.PageUtil;

/**
 * 分区管理
 */
@Controller
@RequestMapping("/subAreaControl")
public class SubAreaController {
	
	@Autowired
	private SubAreaService subAreaService;
	@Autowired
	private AreaService areaService;
	
	/**
	 * 分页查询
	 * 
	 * @param courier
	 * @return
	 */
	@RequestMapping("subArea_pageQuery")
	@ResponseBody
	public EasyUIDataGridResult pageQuery(SubArea subarea, Integer page, Integer rows) {
		// 查询总记录数
		int total = subAreaService.findTotal(subarea);
		// 查询数据
		PageUtil.setPage(page, rows, total);
		subarea.setBegin(PageUtil.getResult()[0]);
		subarea.setEnd(PageUtil.getResult()[1]);
		List<SubArea> pageDataList = subAreaService.findPageData(subarea);
		EasyUIDataGridResult result = new EasyUIDataGridResult(total, pageDataList);
		return result;
	}
	
	/**
	 * 批量导入
	 * @param file
	 * @param request
	 * @throws IOException
	 */
	@RequestMapping("subArea_batchImport")
	public String subAreaBatchImport(@RequestParam MultipartFile file, HttpServletRequest request) throws IOException {
		
		String fileName = file.getOriginalFilename();
		String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);
		if (suffix.equals("xlsx")) {
			List<?> subAreas = parsingXSSF(file.getInputStream());
			// 调用业务层
			subAreaService.saveBatch(subAreas);
		}

		return "base/area";
	}
	
	/**
	 * 解析XSSF .xlsx格式Excel
	 * 
	 * @param fileStream
	 * @return
	 * @throws IOException
	 */
	public List<?> parsingXSSF(InputStream fileStream) throws IOException {
		List<?> resultList = new ArrayList<>();
		List<SubArea> subArea = new ArrayList<SubArea>();
		// 编写基于.xls格式解析HSSF
		// 1.加载Excel文件对象
		XSSFWorkbook xssfWorkbook = new XSSFWorkbook(fileStream);
		// 2.读取一个sheet
		XSSFSheet sheet = xssfWorkbook.getSheetAt(0);
		// 3.读取sheet中每一行
		for (Row row : sheet) {
			// 一行数据 对应一个对象
			if (row.getRowNum() == 0) {
				// 第一行跳过
				continue;
			}
			// 跳过空行
			if (row.getCell(0) == null || StringUtils.isBlank(row.getCell(0).getStringCellValue())) {
				continue;
			}
			SubArea rowSubArea = new SubArea();
			rowSubArea.setId(row.getCell(0).getStringCellValue());
			rowSubArea.setKeyWords(row.getCell(4).getStringCellValue());
			rowSubArea.setStartNum(row.getCell(5).getStringCellValue());
			rowSubArea.setEndnum(row.getCell(6).getStringCellValue());
			rowSubArea.setSingle(row.getCell(7).getStringCellValue());
			rowSubArea.setAssistKeyWords(row.getCell(8).getStringCellValue());
			
			Area area = new Area();
			area.setProvince(row.getCell(1).getStringCellValue());
			area.setCity(row.getCell(2).getStringCellValue());
			area.setDistrict(row.getCell(3).getStringCellValue());
			String areaId = areaService.getKey(area);
			rowSubArea.setAreaId(areaId);
			
			// 城市编码
			subArea.add(rowSubArea);
			resultList = subArea;
		}
		return resultList;
	}
	
}
