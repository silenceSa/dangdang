package com.yidu.dangdang.admin.dao;

import java.util.List;

import com.yidu.dangdang.admin.domain.Admin;
import com.yidu.dangdang.admin.domain.AdminLog;
import com.yidu.dangdang.util.DynamicSql;

public interface AdminDao {
	
	public abstract Admin findAdmin(String adminName,String password);
	
	public abstract int addAdmin(Admin admin);
	
	public abstract int addAdminLog(AdminLog log);
	
	public abstract List<AdminLog> findAllLog(int pageNum,int pageSize);
	
	public abstract List<AdminLog> findLog(DynamicSql sql);
	
	public abstract List<Admin> findAllAdmin();
	
	public abstract int countLog();

}
