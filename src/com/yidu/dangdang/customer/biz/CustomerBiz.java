package com.yidu.dangdang.customer.biz;

import java.util.List;

import com.yidu.dangdang.customer.domain.Customer;
import com.yidu.dangdang.util.DynamicSql;

public interface CustomerBiz {
	/**
	 * 查找所有用户
	 * @return	所有用户集合
	 */
	public abstract List<Customer> findAllCustomer();
	
	/**
	 * 通过姓名查找用户
	 * @param customerName		用户名
	 * @return	用户集合
	 */
	public abstract Customer findCusByName(String customerName);
	
	/**
	 * 通过电话号码查找所有用户
	 * @param phoneNum		电话号码
	 * @return	用户集合
	 */
	public abstract List<Customer> findCusByPhonenum(String phoneNum);

	public abstract List<Customer> findUser(DynamicSql dyn);
	
	public abstract List<Customer> findUserByPage(int pageNum,int pageSize,List<Customer> customers);
	
	public abstract int addCustomer(Customer customer);
	
}
