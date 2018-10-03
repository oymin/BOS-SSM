package cn.itcast.crm.dao;

import java.util.List;

import cn.itcast.crm.domain.Customer;

public interface CustomerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Customer customer);

    int insertSelective(Customer customer);

    Customer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Customer customer);

    int updateByPrimaryKey(Customer customer);

	List<Customer> findByFixedAreaIdIsNull();

	List<Customer> findByFixedAreaId(String fixedAreaId);

	void clearFixedAreaId(String fixedAreaId);

	void updateFixedAreaId(String fixedAreaId, Integer id);

	Customer findByTelephone(String telephone);

	void updateType(String telephone);

	Customer login(String telephone, String password);

	String findFixedAreaIdByAddress(String address);
}