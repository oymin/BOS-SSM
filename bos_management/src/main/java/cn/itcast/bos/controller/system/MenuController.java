package cn.itcast.bos.controller.system;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.bos.pojo.EasyUIDataGridResult;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.system.Menu;
import cn.itcast.bos.pojo.system.User;
import cn.itcast.bos.service.MenuService;

@Controller
@RequestMapping("menuControl")
public class MenuController {

	@Autowired
	private MenuService menuService;
	
	@RequestMapping("menu_list")
	@ResponseBody
	public List<Menu> menuList() {
		//Integer total = menuService.findTotal();
		List<Menu> menus = menuService.findAll();
		return menus;
	}
	
	/**
	 * 根据用户显示菜单
	 * @return
	 */
	@RequestMapping("menu_show")
	@ResponseBody
	public List<Menu> menuShow() {
		Subject subject = SecurityUtils.getSubject();
		User user = (User)subject.getPrincipal();
		List<Menu> menus = menuService.findByUser(user);
		
		return menus;
	}
	
	@RequestMapping("parentMenu_list")
	@ResponseBody
	public List<Menu> parentMenuList() {
		return menuService.findParentMenuList();
	}
	
	@RequestMapping("menu_save")
	public String save(Menu menu) {
		menuService.save(menu);
		return "system/menu_add";
	}
	
}
