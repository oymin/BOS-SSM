package cn.itcast.bos.service;

import java.util.List;

import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.system.Menu;
import cn.itcast.bos.pojo.system.User;

public interface MenuService {

	Integer findTotal();

	List<Menu> findAll();

	List<Menu> findParentMenuList();

	Result save(Menu menu);

	List<Menu> findByUser(User user);

}
