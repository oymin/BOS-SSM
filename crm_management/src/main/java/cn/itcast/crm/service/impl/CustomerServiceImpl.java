package cn.itcast.crm.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.crm.dao.CustomerMapper;
import cn.itcast.crm.domain.Customer;
import cn.itcast.crm.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	// 注入DAO
	@Autowired
	private CustomerMapper customerMapper;

	@Override
	public List<Customer> findNoAssociationCustomers() {
		// fixedAreaId is null
		return customerMapper.findByFixedAreaIdIsNull();
	}

	@Override
	public List<Customer> findHasAssociationFixedAreaCustomers(
			String fixedAreaId) {
		// fixedAreaId is ?
		return customerMapper.findByFixedAreaId(fixedAreaId);
	}

	@Override
	public void associationCustomersToFixedArea(String customerIdStr,
			String fixedAreaId) {
		// 解除关联动作
		customerMapper.clearFixedAreaId(fixedAreaId);

		// 切割字符串 1,2,3
		if (StringUtils.isBlank(customerIdStr)) {
			return;
		}
		String[] customerIdArray = customerIdStr.split(",");
		for (String idStr : customerIdArray) {
			Integer id = Integer.parseInt(idStr);
			customerMapper.updateFixedAreaId(fixedAreaId, id);
		}
	}

	@Override
	public void regist(Customer customer) {
		customerMapper.insertSelective(customer);
	}

	@Override
	public Customer findByTelephone(String telephone) {
		return customerMapper.findByTelephone(telephone);
	}

	@Override
	public void updateType(String telephone) {
		customerMapper.updateType(telephone);
	}

	@Override
	public Customer login(String telephone, String password) {
		Customer customer = customerMapper.login(telephone,password);
		return customer;
	}

	//根据地址获取定区编码
	@Override
	public String findFixedAreaIdByAddress(String address) {
		
		return customerMapper.findFixedAreaIdByAddress(address);
	}

}
