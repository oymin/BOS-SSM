package cn.itcast.bos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.bos.dao.UserMapper;
import cn.itcast.bos.pojo.system.User;
import cn.itcast.bos.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public User findByUsernameAndPassword(String username, String password) {
		return userMapper.findByUsernameAndPassword( username,  password);
	}

	@Override
	public int findTotal(User user) {
		return userMapper.findTotal(user);
	}

	@Override
	public List<User> findPageData(User user) {
		return userMapper.findPageData(user);
	}

	@Override
	public int save(User user) {
		return userMapper.insertSelective(user);
	}

	@Override
	public int saveUserAndRole(int id, Integer roleId) {
		return userMapper.saveUserAndRole(id,roleId);
	}

}
