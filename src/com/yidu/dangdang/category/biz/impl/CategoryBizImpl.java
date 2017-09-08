package com.yidu.dangdang.category.biz.impl;

import java.util.ArrayList;
import java.util.List;

import com.yidu.dangdang.category.biz.CategoryBiz;
import com.yidu.dangdang.category.dao.CategoryDao;
import com.yidu.dangdang.category.dao.impl.CategoryDaoImpl;
import com.yidu.dangdang.category.domain.Category;
import com.yidu.dangdang.category.dto.CategoryNode;
import com.yidu.dangdang.util.DynamicSql;


public class CategoryBizImpl implements CategoryBiz{
	
	CategoryDao catDao = new CategoryDaoImpl();

	@Override
	public List<CategoryNode> findAllCategory() {
		//获得所有的父类集合
		List<Category> categorys = catDao.findAll();
		List<CategoryNode> cateNodes = new ArrayList<CategoryNode>();
		//转换为父类node集合
		for (Category category : categorys) {
			CategoryNode node = new CategoryNode();
			node.setId(category.getCategoryId());
			node.setText(category.getCategoryName());
			node.setParentId(category.getParentId());
			node.setDescribe(category.getDescribe());
			
			node.setState("open");
			
		}
		
		return cateNodes;
	}

	@Override
	public List<CategoryNode> findCategoryByPid(String parentId) {
		List<Category> categorys = catDao.findCategories(parentId);
		List<CategoryNode> cateNodes = new ArrayList<CategoryNode>();
		//转换为父类node集合
		for (Category category : categorys) {
			CategoryNode node = new CategoryNode();
			node.setId(category.getCategoryId());
			node.setText(category.getCategoryName());
			node.setParentId(category.getParentId());
			node.setDescribe(category.getDescribe());
			if (catDao.hasChildren(category.getCategoryId())) {
				node.setState("closed");
			} else {
				node.setState("open");
			}
			cateNodes.add(node);
			
		}
		
		return cateNodes;
	}

	@Override
	public int removeCategory(String categoryId) {
		return catDao.removeCategory(categoryId);
	}

	@Override
	public int addCategory(Category category) {
		return catDao.addCategory(category);
	}

	@Override
	public int updateCategory(Category category) {
		return catDao.updateCategory(category);
	}

	@Override
	public List<Category> findCateByLevel(DynamicSql sql,int pageNum,int pageSize) {
		List<Category> cates = catDao.findCateByLevel(sql);
		int start = (pageNum-1)*pageSize;
		int end = pageSize+start>cates.size() ? cates.size() : pageSize+start;
		return cates.subList(start, end);
	}

	@Override
	public String findCategoryIdByName(String parentName) {
        return catDao.findCategoryIdByName(parentName);		
	}

	@Override
	public int findCountByLevel(String level) {
		return catDao.findCountByLevel(level);
	}

	@Override
	public List<Category> findChildCate(String categoryId) {
		return catDao.findCateById(categoryId);
	}

}
