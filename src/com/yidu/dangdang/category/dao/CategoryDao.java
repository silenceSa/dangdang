package com.yidu.dangdang.category.dao;

import java.util.List;

import com.yidu.dangdang.category.domain.Category;
import com.yidu.dangdang.util.DynamicSql;


/**
 * 分类DAO接口
 * @author youngboy
 * @since 2017/5/30
 */
public interface CategoryDao {

	/**
	 * 移除分类的方法
	 * @param categoryId  分类ID
	 * @return 影响的行数
	 */
	public abstract int removeCategory(String categoryId);
	
	
	/**
	 * 通过ID查找子类
	 * @param categoryId 分类ID
	 * @return 子类集合
	 */
	public abstract List<Category> findCateById(String categoryId);
	
	/**
	 * 修改分类
	 * @param category  分类对象
	 * @return  影响的行数
	 */
	public abstract int updateCategory(Category category);
	
	
	
	/**
	 * 添加分类
	 * @param category  分类对象
	 * @return 影响的行数
	 */
	public abstract int addCategory(Category category);
	
	
	
	/**
	 * 查询所有的分类
	 * @return 分类集合
	 */
	public abstract List<Category> findAll();
	
	
	
	/**
	 * 根据父类ID查询所有的子分类
	 * @param parentId 父类ID
	 * @return 父类集合
	 */
	 public abstract List<Category> findCategories(String parentId);
	 
	 
	 /**
	  * 判断是否有子类
	  * @param categoryId 父类ID
	  * @return true|false
	  */
	 public abstract boolean hasChildren(String categoryId);


    /**
     * 动态查询分类
     * @param sql
     * @return 分类集合
     */
	public abstract List<Category> findCateByLevel(DynamicSql sql);
 
	/**
	 * 根据名字查询分类Id
	 * @param parentName 父类名
	 * @return string
	 */
	public abstract String findCategoryIdByName(String parentName);


    /**
     * 找到级数
     * @param level 级
     * @return 数目
     */
	public abstract int findCountByLevel(String level);
	
	
}
