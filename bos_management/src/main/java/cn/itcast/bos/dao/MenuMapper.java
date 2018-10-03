package cn.itcast.bos.dao;

import java.util.List;

import cn.itcast.bos.pojo.system.Menu;
import cn.itcast.bos.pojo.system.User;

public interface MenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);

    Integer findTotal();

	List<Menu> findAll();

	List<Menu> findParentMenuList();

	int getLastIdByPid(Integer pid);

	int getLastOrderNumByPid(Integer pid);

	int getLastOrderNumByPid2(Integer pid);

	List<Menu> findByUser(Integer id);

	List<Menu> findAllNoRoot();
}