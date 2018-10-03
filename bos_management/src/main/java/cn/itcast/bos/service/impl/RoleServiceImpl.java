package cn.itcast.bos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.bos.dao.RoleMapper;
import cn.itcast.bos.pojo.system.Role;
import cn.itcast.bos.pojo.system.User;
import cn.itcast.bos.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleMapper roleMapper;

	@Override
	public List<String> findByUser(User user) {
		// 判断是否是超级管理员
		if (user.getId() == 1) {
			return roleMapper.findAllKeyword();
		} else {
			return roleMapper.findByUser(user.getId());
		}
	}

	@Override
	public List<Role> findAll() {
		return roleMapper.findAll();
	}

	@Override
	public int save(Role role) {
		return roleMapper.insertSelective(role);
	}

	@Override
	public void saveRoleAndPerm(Integer id, Integer permId) {
		roleMapper.saveRoleAndPerm(id,permId);
	}

	@Override
	public void saveRoleAndMenu(Integer id, int parseInt) {
		roleMapper.saveRoleAndMenu(id,parseInt);
	}

	@Override
	public int getLastId() {
		return roleMapper.getLastId();
	}

}
