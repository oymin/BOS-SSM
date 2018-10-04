package cn.itcast.bos.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itextpdf.text.BadElementException;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import cn.itcast.bos.pojo.EasyUIDataGridResult;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.take_delivery.WayBill;
import cn.itcast.bos.service.WayBillService;
import cn.itcast.bos.utils.FileUtils;
import cn.itcast.bos.utils.PageUtil;

/**
 * 运单管理
 * 
 * @author koax
 */
@Controller
@RequestMapping("wayBillControl")
public class WayBillController {
	private Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private WayBillService wayBillService;

	// 添加
	@RequestMapping("/waybill_save")
	@ResponseBody
	public Result save(WayBill wayBill) {
		int result = 0;
		try {
			WayBill findByWayBillNum = wayBillService.findByWayBillNum(wayBill.getWayBillNum());
			if (findByWayBillNum.getId() != null || findByWayBillNum.getId() > 0) {
				Integer id = findByWayBillNum.getId();
				BeanUtils.copyProperties(findByWayBillNum, wayBill);
				findByWayBillNum.setId(id);
				result = wayBillService.updateWayBill(findByWayBillNum);
			} else {
				result = wayBillService.save(wayBill);
			}
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		return result == 0 ? Result.error() : Result.ok();
	}

	// 根据运单号查询
	@RequestMapping("/waybill_findByWayBillNum")
	@ResponseBody
	public Result findByWayBillNum(String wayBillNum) {
		WayBill wayBill = wayBillService.findByWayBillNum(wayBillNum);
		if (wayBill == null) {
			return Result.error();
		} else {
			return Result.ok(wayBill);
		}
	}

	// 分页查询
	@RequestMapping("/waybill_pageQuery")
	@ResponseBody
	public EasyUIDataGridResult pageQuery(WayBill wayBill, Integer page, Integer rows) {
		Integer total = wayBillService.findTotal(wayBill);
		PageUtil.setPage(page, rows, total);
		wayBill.setBegin(PageUtil.getResult()[0]);
		wayBill.setEnd(PageUtil.getResult()[1]);
		List<WayBill> list = wayBillService.findPageData(wayBill);
		return new EasyUIDataGridResult(total, list);
	}
	
	/**
	 * 导出PDF
	 * 
	 * @throws IOException 
	 * @throws DocumentException 
	 */
	@RequestMapping("report_exportPdf")
	public void exportPdf(WayBill wayBill, HttpServletResponse response, HttpServletRequest request) throws IOException, DocumentException {
		System.out.println("下载数据");

		List<WayBill> wayBills = wayBillService.findPageData(wayBill);

		// 生成PDF文件

		// 下载导出
		// 设置头信息
		response.setContentType("application/pdf;charset=utf-8");
		String filename = "运单数据.pdf";
		String agent = request.getHeader("user-agent");
		filename = FileUtils.encodeDownloadFilename(filename, agent);
		response.setHeader("Content-Disposition", "attachment;filename=" + filename);
		
		try {
			//生成pdf文件
			Document document = new Document();
			PdfWriter.getInstance(document, response.getOutputStream());
			document.open();
			//写PDF数据
			//同document 生成pdf表格
			PdfPTable table = new PdfPTable(new float[] {28,19, 15,27, 12,15, 14});// 7列的表格以及单元格的宽度。
			
			table.setPaddingTop(2);// 顶部空白区高度
			table.setTotalWidth(360);//表格整体宽度
	        table.setLockedWidth(true);
			table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER); //水平对齐方式
			table.getDefaultCell().setVerticalAlignment(Element.ALIGN_TOP); //垂直对齐方式
			
			// 设置表格字体
			BaseFont bf = BaseFont.createFont(this.getClass().getResource("/")+"/simfang.ttf",
					BaseFont.IDENTITY_H,BaseFont.EMBEDDED);
			Font font = new Font(bf, 10, Font.NORMAL, BaseColor.BLUE);
			
			//写表头
			table.addCell(buildCell("运单号",font));
			table.addCell(buildCell("寄件人",font));
			table.addCell(buildCell("寄件人电话",font));
			table.addCell(buildCell("寄件人地址",font));
			table.addCell(buildCell("收件人",font));
			table.addCell(buildCell("收件人电话",font));
			table.addCell(buildCell("收件人地址",font));
			
			//写数据
			for (WayBill waybill : wayBills) {
				table.addCell(buildCell(waybill.getWayBillNum(),font));
				table.addCell(buildCell(waybill.getSendName(),font));
				table.addCell(buildCell(waybill.getSendMobile(),font));
				table.addCell(buildCell(waybill.getSendAddress(),font));
				table.addCell(buildCell(waybill.getRecName(),font));
				table.addCell(buildCell(waybill.getRecMobile(),font));
				table.addCell(buildCell(waybill.getRecAddress(),font));
			}
			
			
			//将表格加入文档
			document.add(table);
			document.close();
			
		} catch (DocumentException e) {
			e.printStackTrace();
			throw new DocumentException("创建PDF失败");
		}

	}
	
	private PdfPCell buildCell(String content, Font font) throws BadElementException {
		Phrase phrase = new Phrase(content, font);
		return new PdfPCell(phrase);
	}

	/**
	 * 导出excel表格
	 * 
	 * @throws IOException 
	 */
	@RequestMapping("report_exportXls")
	public void exportXls(WayBill wayBill, HttpServletResponse response, HttpServletRequest request) throws IOException {

		List<WayBill> wayBills = wayBillService.findPageData(wayBill);

		// 生成Excel文件
		HSSFWorkbook hssfWorkbook = new HSSFWorkbook();
		HSSFSheet sheet = hssfWorkbook.createSheet("运单数据");

		// 表头
		HSSFRow headRow = sheet.createRow(0);
		headRow.createCell(0).setCellValue("运单号");
		headRow.createCell(1).setCellValue("寄件人");
		headRow.createCell(2).setCellValue("寄件人电话");
		headRow.createCell(3).setCellValue("寄件人地址");
		headRow.createCell(4).setCellValue("收件人");
		headRow.createCell(5).setCellValue("收件人电话");
		headRow.createCell(6).setCellValue("收件人地址");

		// 表格数据
		for (WayBill waybill : wayBills) {
			HSSFRow dataRow = sheet.createRow(sheet.getLastRowNum() + 1);
			dataRow.createCell(0).setCellValue(waybill.getWayBillNum());
			dataRow.createCell(1).setCellValue(waybill.getSendName());
			dataRow.createCell(2).setCellValue(waybill.getSendMobile());
			dataRow.createCell(3).setCellValue(waybill.getSendAddress());
			dataRow.createCell(4).setCellValue(waybill.getRecName());
			dataRow.createCell(5).setCellValue(waybill.getRecMobile());
			dataRow.createCell(6).setCellValue(waybill.getRecAddress());
		}

		try {
			// 下载导出
			// 设置头信息
			response.setContentType("application/vnd.ms-excel;charset=utf-8");
			String filename = "运单数据.xls";
			String agent = request.getHeader("user-agent");
			filename = FileUtils.encodeDownloadFilename(filename, agent);
			response.setHeader("Content-Disposition", "attachment;filename=" + filename);
			ServletOutputStream outputStream = response.getOutputStream();
			hssfWorkbook.write(outputStream);
			
		} catch (IOException e) {
			e.printStackTrace();
			throw new IOException("导出运单数据.xls失 ");
		}

		// 关闭
		hssfWorkbook.close();
		/*response.setContentType("applicationnd.ms-excel;charset=utf-8");
		response.setHeader("Content-Disposition",
				"attachment;filename=" + new String(downloadFileName.getBytes("utf-8"), "iso-8859-1"));
		response.addHeader("Content-Length", String.valueOf(ism.available()));
		int nRead = 0;
		while ((nRead = ism.read(buffer)) > 0)
			response.getOutputStream().write(buffer, 0, nRead);
		ism.close();*/
	}

}
