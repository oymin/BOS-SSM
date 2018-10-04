package cn.itcast.bos.service;

import java.util.List;

import cn.itcast.bos.pojo.system.Role;
import cn.itcast.bos.pojo.system.User;

public interface RoleService {

	List<String> findByUser(User user);

	List<Role> findAll();

	int save(Role role);

	void saveRoleAndPerm(Integer id, Integer permId);

	void saveRoleAndMenu(Integer id, int parseInt);

	int getLastId();

}
