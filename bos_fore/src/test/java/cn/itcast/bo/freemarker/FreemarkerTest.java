package cn.itcast.bo.freemarker;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import org.junit.Test;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class FreemarkerTest {
	@Test
	public void testOutput() throws IOException, TemplateException {
		//配置对象，配置模板位置
		Configuration configuration = new Configuration(Configuration.getVersion());
		configuration.setDirectoryForTemplateLoading(new File("src/main/webapp/WEB-INF/template"));
		//获取模板对象
		Template template = configuration.getTemplate("hello.ftl");
		//动态数据对象
		Map<String, Object> map = new HashMap<>();
		map.put("title", "黑马程序员");
		map.put("msg", "你好，这是第一个freemark案例");
		//合并输出
		template.process(map, new PrintWriter(System.out));
		
	}
}
