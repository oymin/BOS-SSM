package cn.itcast.bos.controller.system;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.bos.pojo.system.Permission;
import cn.itcast.bos.service.PermissionService;

@RequestMapping("permissionControl")
@Controller
public class PermissionController {
	
	@Autowired
	private PermissionService permissionService;
	
	@RequestMapping("permission_list")
	@ResponseBody
	public List<Permission> list() {
		return permissionService.findAll();
	}
	
	@RequestMapping("permission_save")
	public String savev(Permission permission) {
		permissionService.save(permission);
		return "system/permission";
	}

}
