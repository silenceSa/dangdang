package com.yidu.dangdang.customer.biz.impl;

import java.util.List;

import com.yidu.dangdang.customer.biz.CustomerServerBiz;
import com.yidu.dangdang.customer.dao.CustomerDao;
import com.yidu.dangdang.customer.dao.impl.CustomerDaoImpl;
import com.yidu.dangdang.customer.domain.Customer;
import com.yidu.dangdang.util.DynamicSql;

public class CustomerServerBizImpl implements CustomerServerBiz{

	private CustomerDao cdao = new CustomerDaoImpl();
	
	
	@Override
	public int regist(Customer customer) {
		
		
		
		//判断是否有重复的用户名
		DynamicSql dsql = new DynamicSql();
		dsql.addParam("customerName;normal");
		dsql.setValue(customer.getCustomerName());
		dsql.addValidParamAndValue();
		List<Customer> cus = cdao.findUser(dsql);
		if(cus.isEmpty()){
			int result = cdao.addCustomer(customer);
			if(result>0){
				//添加成功
				return 2;
			}else{
				//添加失败
				return 1;
			}
		}else{
			return 0;
		}
		
		
	}

	@Override
	public Customer login(String customerName, String password) {
		
		DynamicSql dsql = new DynamicSql();
		dsql.addParam("customerName;normal");
		dsql.addParam("pwd;normal");
		dsql.setValue(customerName);
		dsql.setValue(password);
		dsql.addValidParamAndValue();
		List<Customer> cus = cdao.findUser(dsql);
		if (cus.isEmpty()) {
			return null;
		} else {
			return cus.get(0);
		}
		
	}

	@Override
	public Customer findCustomerByName(String customerName) {
		return cdao.findCusByName(customerName);
	}

	@Override
	public int upDatePwdByName(String loginName,String pwd) {
		return cdao.updatePwdByName(loginName,pwd);
	}

	@Override
	public int activeCustomer(String code) {
		
		return cdao.updateStatus(code);
	}

	
	
	
}
