package cn.itcast.bos.service;

import java.util.List;

import cn.itcast.bos.pojo.system.User;

public interface UserService {

	User findByUsernameAndPassword(String username, String password);

	int findTotal(User user);

	List<User> findPageData(User user);

	int save(User user);

	int saveUserAndRole(int id, Integer roleId);

}
