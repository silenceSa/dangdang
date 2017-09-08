package com.yidu.dangdang.product.service;

import java.util.List;

import com.yidu.dangdang.pager.PageBean;
import com.yidu.dangdang.product.biz.ProductBiz;
import com.yidu.dangdang.product.biz.impl.ProductBizImpl;
import com.yidu.dangdang.product.dao.ProductDao;
import com.yidu.dangdang.product.dao.impl.ProductDaoImpl;
import com.yidu.dangdang.product.domain.Product;
/**
 * 前台分页
 * @author 陈涛
 * @since  2017/7/3
 */
public class ProductService {
	private ProductBiz productBiz = new ProductBizImpl();
	private ProductDao productDao = new ProductDaoImpl();
	/**
	 * 根据商品Id找到商品
	 * @param productId
	 * @return 商品对象
	 */
	public Product findProductByProductId(String productId){
		return productBiz.findProductByProductId(productId);
	}
	
	
	/**
	 * 分类分页查询
	 * @param cid 二级分类ID号
	 * @param pageIndex 当前页的页码
	 * @param pageSize 页面大小
	 * @return 分页分类查询的pageBean对象
	 */
	public PageBean<Product> findPagenationByCategory(String categoryId, int pageIndex, int pageSize){
		//调用biz层找到所有商品的方法
		List<Product> allProductList=productBiz.findAllProduct();
		//获得总记录数
		int totalRecords=allProductList.size();
		//开始数=页码-1*页大小
		int start = (pageIndex-1)*pageSize;
		//结束数=页大小
		int end=pageSize;
		//2.调用biz中的方法findPagenationByCategory(cid, start, end)获取分类分页查询集合
		List<Product> productList = productBiz.findPagenationByCategoryId(categoryId,start,end);
		//3.创建PageBean对象
		PageBean<Product> pageBean = new PageBean<Product>();
		//4.为pageBean设置属性数据
		//bean集合把2加入
		pageBean.setBeanList(productList);
		//页码
		pageBean.setPageIndex(pageIndex);
		//页数
		pageBean.setPageSize(pageSize);
		//总记录数
        pageBean.setTotalRecords(totalRecords);
        //返回pagebean对象
		return pageBean;
	}
	/**
	 * 品牌名分页查询
	 * @param brandName 品牌名
	 * @param pageIndex 当前页的页码
	 * @param pageSize 页面大小
	 * @return 分页分类查询的pageBean对象
	 */
    public PageBean<Product> findProductByBrandName(String brandName, int pageIndex, int pageSize){
        //调用biz层的根据商品名找到商品的方法		
		List<Product> allProductList=productBiz.findProductByBrandName(brandName);
		//获得总记录数
		int totalRecords=allProductList.size();
		//开始数=页码-1*页大小
		int start = (pageIndex-1)*pageSize;
		//结束数=页大小
		int end=pageSize;
		//2.调biz中的方法findPagenationBybrandName(brandName, start, end)获取分页查询集合
		List<Product> productList = productBiz.findPagenationByBrandName(brandName, start, end);
		//3.创建PageBean对象
		PageBean<Product> pageBean = new PageBean<Product>();
		//4.为pageBean设置属性数据
		//bean集合把2加入
		pageBean.setBeanList(productList);
		//页码
		pageBean.setPageIndex(pageIndex);
		//页数
		pageBean.setPageSize(pageSize);
		//总记录数
		pageBean.setTotalRecords(totalRecords);
        //返回pageBean对象
		return pageBean;
	}
    /**
	 * 商品名分页查询
	 * @param productName 商品名
	 * @param pageIndex 当前页的页码
	 * @param pageSize 页面大小
	 * @return 分页分类查询的pageBean对象
	 */
    public PageBean<Product> findProductByProductName(String productName,int pageIndex,int pageSize){
    	//调用dao层根据商品名找到商品的方法
    	List<Product> allProductList=productDao.findProductByProductName(productName);
    	//获得总记录数
    	int totalRecords=allProductList.size();
    	//开始数=页码-1*页大小
    	int start = (pageIndex-1)*pageSize;
    	//结束数=页大小
    	int end=pageSize;
		//2.调用biz中的方法findPagenationByproductName(productName, start,end)获取分页查询集合
		List<Product> productList = productDao.findProductByProductName(productName, start, end);
		//3.创建PageBean对象
		PageBean<Product> pageBean = new PageBean<Product>();
		//4.为pageBean设置属性数据
		//bean集合把2加入
		pageBean.setBeanList(productList);
		//页码
		pageBean.setPageIndex(pageIndex);
		//页数
		pageBean.setPageSize(pageSize);
		//总记录数
		pageBean.setTotalRecords(totalRecords);
        //返回pageBean对象
		return pageBean;
    	
    }
}
