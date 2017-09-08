package com.yidu.dangdang.pager;

import java.util.List;


/**
 * 页面实体Bean
 * @author sinner
 * @param <T> 要显示的实体对象类型，在本项目中可以是Good,Order,Category,Cart
 */
public class PageBean<T> {
	private int pageIndex; // 当前页
	private int totalRecords; // 总记录数
	private int pageSize; // 页面大小
	private String url; // 请求地址
	private List<T>  beanList; // 页面中存放的对象集合

	public PageBean() {

	}
	
	/**
	 * 获取总页数
	 * @return 总页数
	 */
	public int getTotalPages() {
		return totalRecords % pageSize == 0 ? totalRecords / pageSize
				: totalRecords / pageSize + 1;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public List<T> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<T> beanList) {
		this.beanList = beanList;
	}

	@Override
	public String toString() {
		return "PageBean [beanList=" + beanList + ", pageIndex=" + pageIndex
				+ ", pageSize=" + pageSize + ", totalRecords=" + totalRecords
				+ ", url=" + url + "]";
	}


}
