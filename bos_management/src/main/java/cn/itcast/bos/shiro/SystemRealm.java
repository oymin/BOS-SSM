package cn.itcast.bos.shiro;

import java.util.List;
import java.util.Set;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cn.itcast.bos.constant.Constant;
import cn.itcast.bos.pojo.system.Permission;
import cn.itcast.bos.pojo.system.Role;
import cn.itcast.bos.pojo.system.User;
import cn.itcast.bos.service.PermissionService;
import cn.itcast.bos.service.RoleService;
import cn.itcast.bos.service.UserService;

//自定义Realm
//@Component("systemRealm")
public class SystemRealm extends AuthorizingRealm {

	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	@Autowired
	private PermissionService permissionService;

	// 授权
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection token) {
		System.out.println("授权。。。");
		SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
		//根据当前登陆用户  查询对应的角色和权限
		Subject subject = SecurityUtils.getSubject();
		User user = (User)subject.getPrincipal();
		//调用业务层，查询角色
		List<String> roles = roleService.findByUser(user);
		authorizationInfo.addRoles(roles);
		//调用业务层，查询权限
		List<String> permissions = permissionService.findByUser(user);
		authorizationInfo.addStringPermissions(permissions);
		return authorizationInfo;
	}

	// 认证
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		System.out.println("认证。。。");
		// String usernameInput = (String)token.getPrincipal();
		// String passwordInput = new String((char[])token.getCredentials());

		// 等价于
		UsernamePasswordToken userToken = (UsernamePasswordToken) token;
		String username = userToken.getUsername();
		String password = new String(userToken.getPassword());
		
		User user = userService.findByUsernameAndPassword(username, password);

		// 判断用户账号是否被锁定
		if ("0" == user.getStation() ) {
			throw new LockedAccountException("账号已被锁定，请联系管理员");
		}
		
		if (user == null) {
			throw new UnknownAccountException("账号或密码不正确");
		} else {
			// 参数一：登录后保存在Subject中信息
			// 参数二：密码，如果返回为null 说明用户不存在 报用户名不存在异常
			// 参数三：realm名称
			// 安全管理器，自动比较返回的密码和输入密码是否一致，一致登陆成功，不一致报密码错误异常
			return new SimpleAuthenticationInfo(user, user.getPassword(), getName());
		}

	}

}
