package cn.itcast.bos.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.bos.dao.PermissionMapper;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.system.Permission;
import cn.itcast.bos.pojo.system.User;
import cn.itcast.bos.service.PermissionService;

@Service
public class PermissionServiceImpl implements PermissionService {

	@Autowired
	private PermissionMapper permissionMapper;

	@Override
	public List<String> findByUser(User user) {
		if(user.getId() == 1) {
			//超级管理员获取所有权限
			return permissionMapper.findAllKeyword();
		}else {
			return permissionMapper.findByUser(user.getId());
		}
	}

	@Override
	public List<Permission> findAll() {
		return permissionMapper.findAll();
	}

	@Override
	public Result save(Permission permission) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		int id = permissionMapper.findMaxId();
		permission.setId(++id);
		permission.setAddTime(sdf.format(new Date()));
		
		int result = permissionMapper.insertSelective(permission);
		if (result == 0)
			return Result.error("添加失败");
		return Result.ok();
	}
	
}
