package com.yidu.dangdang.customer.dao;

import java.util.List;

import com.yidu.dangdang.customer.domain.Customer;
import com.yidu.dangdang.util.DynamicSql;

/**
 * 数据访问层
 * @author 鲁静芝
 *	@since 2017/06/02
 */
public interface CustomerDao {
	/**
	 * 查找所有的用户	
	 * @return	所有用户集合
	 */
	public abstract List<Customer> findAllCustomer();
	
	/**
	 * 通过名字查找用户
	 * @param 用户名
	 * @return	返回用户
	 */
	public abstract Customer findCusByName(String customerName);

	/**
	 * 通过电话号码查找用户
	 * @param 用户名
	 * @return	返回用户
	 */
	public abstract List<Customer> findCusByPhonenum(String phoneNum);

	/**
	 * 寻找用户
	 * @param dyn
	 * @return
	 */
	public abstract List<Customer> findUser(DynamicSql dyn);
	
	/**
	 * 添加用户
	 * @param customer
	 * @return
	 */
	public abstract int addCustomer(Customer customer);


	public abstract int updatePwdByName(String loginName, String pwd);

	public abstract int updateStatus(String code);
	
	
	
}
