package com.yidu.dangdang.customer.biz.impl;

import java.util.List;

import com.yidu.dangdang.customer.biz.CustomerBiz;
import com.yidu.dangdang.customer.dao.CustomerDao;
import com.yidu.dangdang.customer.dao.impl.CustomerDaoImpl;
import com.yidu.dangdang.customer.domain.Customer;
import com.yidu.dangdang.util.DynamicSql;

public class CustomerBizImpl implements CustomerBiz {

	CustomerDao cusDao = new CustomerDaoImpl();
	
	@Override
	public List<Customer> findAllCustomer() {
		return cusDao.findAllCustomer();
	}

	@Override
	public Customer findCusByName(String customerName) {
		return cusDao.findCusByName(customerName);
	}

	@Override
	public List<Customer> findCusByPhonenum(String phoneNum) {
		return cusDao.findCusByPhonenum(phoneNum);
	}

	@Override
	public List<Customer> findUser(DynamicSql dyn) {
		return cusDao.findUser(dyn);
	}

	@Override
	public List<Customer> findUserByPage(int pageNum, int pageSize,
			List<Customer> customers) {
		int start = (pageNum-1)*pageSize;
		int end = start+pageSize>customers.size()?customers.size():start+pageSize;
		return customers.subList(start, end);
	}

	@Override
	public int addCustomer(Customer customer) {
		return cusDao.addCustomer(customer);
	}

}
