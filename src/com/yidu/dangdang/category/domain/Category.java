package com.yidu.dangdang.category.domain;

import java.util.List;

/**
 * 分类bean
 * @author youngboy
 * @since 2017/5/30
 */
public class Category {

	private String categoryId;
	
	private String categoryName;
	
	private String parentId;
	
	private String describe;
	
	private List<Category> childrens;
	
	
	
	
	
	



	/**
	 * @return the categoryId
	 */
	public String getCategoryId() {
		return categoryId;
	}









	/**
	 * @param categoryId the categoryId to set
	 */
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}









	/**
	 * @return the categoryName
	 */
	public String getCategoryName() {
		return categoryName;
	}









	/**
	 * @param categoryName the categoryName to set
	 */
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}









	/**
	 * @return the parentId
	 */
	public String getParentId() {
		return parentId;
	}









	/**
	 * @param parentId the parentId to set
	 */
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}









	/**
	 * @return the describe
	 */
	public String getDescribe() {
		return describe;
	}









	/**
	 * @param describe the describe to set
	 */
	public void setDescribe(String describe) {
		this.describe = describe;
	}









	/**
	 * @return the childrens
	 */
	public List<Category> getChildrens() {
		return childrens;
	}









	/**
	 * @param childrens the childrens to set
	 */
	public void setChildrens(List<Category> childrens) {
		this.childrens = childrens;
	}









	public Category(){}









	/**
	 * @param categoryId
	 * @param categoryName
	 * @param parentId
	 * @param describe
	 * @param childrens
	 */
	public Category(String categoryId, String categoryName, String parentId,
			String describe, List<Category> childrens) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.parentId = parentId;
		this.describe = describe;
		this.childrens = childrens;
	}









	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((categoryId == null) ? 0 : categoryId.hashCode());
		result = prime * result
				+ ((categoryName == null) ? 0 : categoryName.hashCode());
		result = prime * result
				+ ((childrens == null) ? 0 : childrens.hashCode());
		result = prime * result
				+ ((describe == null) ? 0 : describe.hashCode());
		result = prime * result
				+ ((parentId == null) ? 0 : parentId.hashCode());
		return result;
	}









	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Category other = (Category) obj;
		if (categoryId == null) {
			if (other.categoryId != null)
				return false;
		} else if (!categoryId.equals(other.categoryId))
			return false;
		if (categoryName == null) {
			if (other.categoryName != null)
				return false;
		} else if (!categoryName.equals(other.categoryName))
			return false;
		if (childrens == null) {
			if (other.childrens != null)
				return false;
		} else if (!childrens.equals(other.childrens))
			return false;
		if (describe == null) {
			if (other.describe != null)
				return false;
		} else if (!describe.equals(other.describe))
			return false;
		if (parentId == null) {
			if (other.parentId != null)
				return false;
		} else if (!parentId.equals(other.parentId))
			return false;
		return true;
	}









	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Category [categoryId=" + categoryId + ", categoryName="
				+ categoryName + ", parentId=" + parentId + ", describe="
				+ describe + ", childrens=" + childrens + "]";
	}


	
}
