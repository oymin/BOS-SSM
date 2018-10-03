package cn.itcast.bos.dao;

import java.util.List;

import cn.itcast.bos.pojo.system.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	User findByUsernameAndPassword(String username, String password);

	int findTotal(User user);

	List<User> findPageData(User user);

	int saveUserAndRole(int id, Integer roleId);
}