package cn.itcast.bos.controller.system;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.bos.constant.Constant;
import cn.itcast.bos.pojo.EasyUIDataGridResult;
import cn.itcast.bos.pojo.system.User;
import cn.itcast.bos.service.UserService;
import cn.itcast.bos.utils.PageUtil;

/**
 * 用户
 * 
 * @author koax
 */
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("user_login")
	public String login(User user,HttpServletRequest request) {
		Subject subject = SecurityUtils.getSubject();
		String password = new Md5Hash(user.getPassword(), user.getUsername(), Constant.MD5_HASH_ITERATIONS).toHex();
		// 用户名和密码信息
		UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), password);

		try {
			// 登陆成功
			subject.login(token);
			return "redirect:index";
		} catch (Exception e) {
			// 登陆失败
			e.printStackTrace();
			return "redirect:login";
		}
	}
	
	@RequestMapping(value="user_logout",produces = "text/plain;charset=utf-8")
	public String logout(HttpSession session) {
		//session.invalidate();//设置session失效 如果配置了/logout.action = logout 就不用这个
		SecurityUtils.getSubject().logout();
		return "redirect:login";
	}
	
	@RequestMapping("user_list")
	@ResponseBody
	public EasyUIDataGridResult userList(User user,Integer page, Integer rows) {
		int total = userService.findTotal(user);
		PageUtil.setPage(page, rows, total);
		user.setBegin(PageUtil.getResult()[0]);
		user.setEnd(PageUtil.getResult()[1]);
		List<User> pageDataList = userService.findPageData(user);
		EasyUIDataGridResult result = new EasyUIDataGridResult(total, pageDataList);
		return result;
	}
	
	@RequestMapping("user_save")
	public String save(User user,Integer[] roleIds) {
		String password = new Md5Hash(user.getPassword(), user.getUsername(), Constant.MD5_HASH_ITERATIONS).toHex();
		user.setPassword(password);
		userService.save(user);
		if(roleIds != null) {
			for (Integer roleId : roleIds) {
				userService.saveUserAndRole(user.getId(),roleId);
			}
		}
		return "system/userlist";
	}
	
	
}












