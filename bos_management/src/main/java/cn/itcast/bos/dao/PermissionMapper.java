package cn.itcast.bos.dao;

import java.util.List;

import cn.itcast.bos.pojo.system.Permission;

public interface PermissionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Permission record);

    int insertSelective(Permission record);

    Permission selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Permission record);

    int updateByPrimaryKey(Permission record);

	List<String> findAllKeyword();

	List<String> findByUser(Integer id);

	List<Permission> findAll();

	int findMaxId();
}