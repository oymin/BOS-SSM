package cn.itcast.bos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.bos.dao.MenuMapper;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.system.Menu;
import cn.itcast.bos.pojo.system.User;
import cn.itcast.bos.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuMapper menuMapper;

	@Override
	public Integer findTotal() {
		return menuMapper.findTotal();
	}

	@Override
	public List<Menu> findAll() {
		return menuMapper.findAll();
	}

	@Override
	public List<Menu> findParentMenuList() {
		return menuMapper.findParentMenuList();
	}

	@Override
	public Result save(Menu menu) {
		int result = 0;
		
		//设置Id
		int id = menuMapper.getLastIdByPid(menu.getPid());
		id++;
		menu.setId(id);
		//orderNum
		if(menu.getPid() == 1) {
			int orderNum = menuMapper.getLastOrderNumByPid(menu.getPid());
			orderNum++;
			menu.setOrderNum(orderNum);
		}else {
			int orderNum = menuMapper.getLastOrderNumByPid2(menu.getPid());
			menu.setOrderNum(orderNum);
		}
		
		result = menuMapper.insertSelective(menu);
		if(result == 0)
			return Result.error("添加失败");
		
		return Result.ok();
	}

	@Override
	public List<Menu> findByUser(User user) {
		if(user.getId() == 1) {
			return menuMapper.findAllNoRoot();
		}else {
			return menuMapper.findByUser(user.getId());
		}
	}
	
	
	
}
