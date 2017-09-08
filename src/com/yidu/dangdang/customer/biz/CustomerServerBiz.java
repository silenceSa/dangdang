package com.yidu.dangdang.customer.biz;

import com.yidu.dangdang.customer.domain.Customer;

public interface CustomerServerBiz {

	public abstract int regist(Customer customer);
	
	public abstract Customer login(String customerName,String password);
	
	public abstract Customer findCustomerByName(String customerName);

	public abstract int upDatePwdByName(String loginName,String pwd);

	public abstract int activeCustomer(String code);
	
	
}
