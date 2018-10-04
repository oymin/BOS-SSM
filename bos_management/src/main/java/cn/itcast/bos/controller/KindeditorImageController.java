package cn.itcast.bos.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * Kindeditor文本编辑器上传图片处理
 * @author koax
 */
@Controller
public class KindeditorImageController {
	
	@RequestMapping("/image_upload")
	@ResponseBody
	public Map<String, Object> upload(MultipartFile imgFile,HttpServletRequest request) throws IOException {
		
		String filename = imgFile.getOriginalFilename();
		String ext = filename.substring(filename.lastIndexOf("."));
		//生成随机文件名
		UUID uuid = UUID.randomUUID();
		String newname = uuid + RandomStringUtils.randomNumeric(2) + ext;
		//获取绝对路径
		String realPath = request.getSession().getServletContext().getRealPath("/uploadImg/");
		//存储图片
		FileUtils.writeByteArrayToFile(new File(realPath, newname), imgFile.getBytes());
		
		//返回参数error,rul kindeditor的返回参数
		Map<String, Object> map = new HashMap<>();
		map.put("error", 0);//0代表上传成功
		map.put("url", "/uploadImg/"+newname);
		
		return map;
	}
	
	@RequestMapping("/image_manage")
	@ResponseBody
	public Map<String,Object> imageManage(HttpServletRequest request) {
		
		//项目录路径
		String rootPath = request.getSession().getServletContext().getRealPath("/uploadImg")+"/";
		//根目录url
		String rootUrl = request.getContextPath() + "/uploadImg/";
		//图片扩展名
		String[] fileTypes = new String[]{"gif", "jpg", "jpeg", "png", "bmp"};
		//目录不存在或不是目录
		File currentPathFile = new File(rootPath);
		if(!currentPathFile.isDirectory()){
			throw new RuntimeException("Directory does not exist.");
		}
		//遍历目录取的文件信息
		List<Map<String,Object>> fileList = new ArrayList<Map<String,Object>>();
		if(currentPathFile.listFiles() != null) {
			for (File file : currentPathFile.listFiles()) {
				Map<String, Object> hash = new HashMap<String, Object>();
				String fileName = file.getName();
				if(file.isDirectory()) {
					hash.put("is_dir", true);
					hash.put("has_file", (file.listFiles() != null));
					hash.put("filesize", 0L);
					hash.put("is_photo", false);
					hash.put("filetype", "");
				} else if(file.isFile()){
					String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
					hash.put("is_dir", false);
					hash.put("has_file", false);
					hash.put("filesize", file.length());
					hash.put("is_photo", Arrays.<String>asList(fileTypes).contains(fileExt));
					hash.put("filetype", fileExt);
				}
				hash.put("filename", fileName);
				hash.put("datetime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(file.lastModified()));
				fileList.add(hash);
			}
		}
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("moveup_dir_path", "");
		result.put("current_dir_path", rootPath);
		result.put("current_url", rootUrl);
		result.put("total_count", fileList.size());
		result.put("file_list", fileList);
		
		return result;
	}
	
}













