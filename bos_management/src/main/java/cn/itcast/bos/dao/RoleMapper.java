package cn.itcast.bos.dao;

import java.util.List;

import cn.itcast.bos.pojo.system.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

	List<String> findAllKeyword();

	List<String> findByUser(Integer id);

	List<Role> findAll();

	void saveRoleAndPerm(Integer id, Integer permId);

	void saveRoleAndMenu(Integer id, int parseInt);

	int getLastId();
}