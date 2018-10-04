package cn.itcast.bos.service;

import java.util.List;

import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.system.Permission;
import cn.itcast.bos.pojo.system.User;

public interface PermissionService {

	List<String> findByUser(User user);

	List<Permission> findAll();

	Result save(Permission permission);

}
