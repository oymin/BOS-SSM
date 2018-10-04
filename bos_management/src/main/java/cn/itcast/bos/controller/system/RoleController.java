package cn.itcast.bos.controller.system;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.bos.pojo.system.Role;
import cn.itcast.bos.service.RoleService;

@RequestMapping("roleControl")
@Controller
public class RoleController {
	
	@Autowired
	private RoleService roleService;
	
	@RequestMapping("role_list")
	@ResponseBody
	public List<Role> list(){
		List<Role> list = roleService.findAll();
		return list;
	}
	
	@RequestMapping("role_save")
	public String save(Role role,Integer[] permissionIds,String menuIds){
		int id = roleService.getLastId();
		role.setId(++id);
		roleService.save(role);
		if(permissionIds != null) {
			for (Integer permId : permissionIds) {
				roleService.saveRoleAndPerm(role.getId(),permId);
			}
		}
		if(menuIds.startsWith("1,")) {
			String substring = menuIds.substring(2, menuIds.length());
			String[] menuArr = substring.split(",");
			for (String menuId : menuArr) {
				roleService.saveRoleAndMenu(role.getId(),Integer.parseInt(menuId));
			}
		}
		return "system/role";
	}

}
