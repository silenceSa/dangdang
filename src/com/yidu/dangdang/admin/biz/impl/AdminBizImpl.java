package com.yidu.dangdang.admin.biz.impl;

import java.util.List;

import com.yidu.dangdang.admin.biz.AdminBiz;
import com.yidu.dangdang.admin.dao.AdminDao;
import com.yidu.dangdang.admin.dao.impl.AdminDaoImpl;
import com.yidu.dangdang.admin.domain.Admin;
import com.yidu.dangdang.admin.domain.AdminLog;
import com.yidu.dangdang.util.DynamicSql;

public class AdminBizImpl implements AdminBiz {

	private AdminDao adminDao = new AdminDaoImpl();
	
	
	@Override
	public Admin login(String adminName, String password) {
		return adminDao.findAdmin(adminName, password);
	}

	@Override
	public int addAdmin(Admin admin) {
		return adminDao.addAdmin(admin);
	}

	@Override
	public int addAdminLog(AdminLog log) {
		return adminDao.addAdminLog(log);
	}

	@Override
	public List<AdminLog> findPartLog(int pageNum, int pageSize) {
		return adminDao.findAllLog(pageNum, pageSize);
	}

	@Override
	public List<AdminLog> findLog(DynamicSql sql) {
		return adminDao.findLog(sql);
	}

	@Override
	public List<Admin> findAllAdmin() {
		return adminDao.findAllAdmin();
	}

	@Override
	public int countLogs() {
		return adminDao.countLog();
	}

}
