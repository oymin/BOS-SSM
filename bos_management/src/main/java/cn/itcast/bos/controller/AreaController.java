package cn.itcast.bos.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.itcast.bos.pojo.Area;
import cn.itcast.bos.pojo.EasyUIDataGridResult;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.service.AreaService;
import cn.itcast.bos.utils.PageUtil;
import cn.itcast.bos.utils.PinYin4jUtils;

/**
 * 区域设置controller
 * 
 * @author koax
 */
@Controller
public class AreaController {

	@Autowired
	private AreaService areaService;

	/**
	 * 分页查询
	 * 
	 * @param courier
	 * @return
	 */
	@RequestMapping("/area_pageQuery")
	@ResponseBody
	public EasyUIDataGridResult pageQuery(Area area, Integer page, Integer rows) {
		// 查询总记录数
		int total = areaService.findTotal(area);
		// 查询数据
		PageUtil.setPage(page, rows, total);
		area.setBegin(PageUtil.getResult()[0]);
		area.setEnd(PageUtil.getResult()[1]);
		List<Area> pageDataList = areaService.findPageData(area);
		EasyUIDataGridResult result = new EasyUIDataGridResult(total, pageDataList);
		return result;
	}

	/**
	 * 批量导入
	 * 
	 * @param file
	 * @param request
	 * @throws IOException
	 */
	@RequestMapping("/area_batchImport")
	public String areaBatchImport(@RequestParam MultipartFile file, HttpServletRequest request) throws IOException {
		String fileName = file.getOriginalFilename();
		String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);
		if (suffix.equals("xls")) {
			List<?> areas = parsingHSSF(file.getInputStream());
			// 调用业务层
			areaService.saveBatch(areas);
		}

		return "base/area";
	}

	/**
	 * 解析HSSF .xls格式Excel
	 * 
	 * @param fileStream
	 * @return
	 * @throws IOException
	 */
	public List<?> parsingHSSF(InputStream fileStream) throws IOException {
		List<?> resultList = new ArrayList<>();
		List<Area> areas = new ArrayList<Area>();
		// 编写基于.xls格式解析HSSF
		// 1.加载Excel文件对象
		HSSFWorkbook hssfWorkbook = new HSSFWorkbook(fileStream);
		// 2.读取一个sheet
		HSSFSheet sheet = hssfWorkbook.getSheetAt(0);
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
			Area area = new Area();
			area.setId(row.getCell(0).getStringCellValue());
			area.setProvince(row.getCell(1).getStringCellValue());
			area.setCity(row.getCell(2).getStringCellValue());
			area.setDistrict(row.getCell(3).getStringCellValue());
			area.setPostcode(row.getCell(4).getStringCellValue());
			// 基于pinyin4j生成城市编码和简码
			String province = area.getCity().substring(0, area.getCity().length() - 1); // 省
			String city = area.getCity().substring(0, area.getCity().length() - 1); // 市
			String district = area.getDistrict().substring(0, area.getDistrict().length() - 1); // 区
			// 简码
			String[] headArray = PinYin4jUtils.getHeadByString(province + city + district);
			StringBuffer buffer = new StringBuffer();
			for (String headStr : headArray) {
				buffer.append(headStr);
			}
			String shortCode = buffer.toString();
			area.setShortcode(shortCode);
			// 城市编码
			String citycode = PinYin4jUtils.hanziToPinyin(city, "");
			area.setCitycode(citycode);
			areas.add(area);
			resultList = areas;
		}
		return resultList;
	}

	@RequestMapping("/getKey")
	@ResponseBody
	public String getKey(String sendVal,String recVal, String callback) throws UnsupportedEncodingException {
		if(StringUtils.isBlank(sendVal))
			return null;
		if(StringUtils.isBlank(recVal)) {
			return null;
		}
		String strSend = new String(sendVal.getBytes("iso-8859-1"), "utf-8");
		String strRec = new String(recVal.getBytes("iso-8859-1"), "utf-8");
		String[] split = strSend.split("/");
		Area area = new Area();
		area.setProvince(split[0]);
		area.setCity(split[1]);
		if (split.length > 2) {
			area.setDistrict(split[2]);
		}
		String[] split2 = strRec.split("/");
		Area area2 = new Area();
		area2.setProvince(split2[0]);
		area2.setCity(split2[1]);
		if (split2.length > 2) {
			area2.setDistrict(split2[2]);
		}
		
		String sendKey = areaService.getKey(area);
		String recKey = areaService.getKey(area2);
		String json = "[{\"sendId\": \""+sendKey+"\",\"recId\":\""+recKey+"\"}]";
		JSONArray jsonArray = new JSONArray(json);
		JSONObject jsonObject = jsonArray.getJSONObject(0);
		return callback + "(" + jsonObject + ");";
	}

}
