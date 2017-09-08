package com.yidu.dangdang.category.biz;

import java.util.List;

import com.yidu.dangdang.category.domain.Category;
import com.yidu.dangdang.category.dto.CategoryNode;
import com.yidu.dangdang.util.DynamicSql;


public interface CategoryBiz {

	
	/**
	 * 找到所有的分类
	 * @return 分类节点集合
	 */
	public abstract List<CategoryNode> findAllCategory();
	
	
	/**
	 * 递归找到所有分类
	 * @return 分类集合
	 */
	public abstract List<Category> findChildCate(String categoryId);
	
	/**
	 * 通过父类ID找所有的子类
	 * @param parentId 父类ID
	 * @return 父类节点集合
	 */
	public abstract List<CategoryNode> findCategoryByPid(String parentId);
	
	
	/**
	 * 移除分类
	 * @param categoryId 分类ID
	 * @return 影响的行数
	 */
	public abstract int removeCategory(String categoryId); 
	
	
    /**
     * 添加分类	
     * @return 影响的行数 
     */
	public abstract int addCategory(Category category);
	
	
	/**
	 * 修改分类
	 * @param category 分类对象
	 * @return 影响的行数
	 */
	public abstract int updateCategory(Category category);


	public abstract List<Category> findCateByLevel(DynamicSql sql, int page, int row);


	public abstract String findCategoryIdByName(String parentName);


	public abstract int findCountByLevel(String level);
	
	
	
}
