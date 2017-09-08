package com.yidu.dangdang.product.biz.impl;


import java.util.List;

import com.yidu.dangdang.product.biz.ProductBiz;
import com.yidu.dangdang.product.dao.ProductDao;
import com.yidu.dangdang.product.dao.impl.ProductDaoImpl;
import com.yidu.dangdang.product.domain.Product;
import com.yidu.dangdang.util.DynamicSql;

/**
 * 商品逻辑层
 * @author 陈涛
 * @since2017/7/3
 */
public class ProductBizImpl implements ProductBiz{
	/**
	 * 调用业务访问层
	 */
	ProductDao productDao=new ProductDaoImpl();

	/**
	 * 找到所有商品
	 * @return 商品集合
	 */
	@Override
	public List<Product> findAllProduct() {
		List<Product> products = productDao.findAllProduct();	
		return products;
	}

	/**
	 * 删除商品
	 * @param productId 商品Id
	 * @return 受影响行数
	 */
	@Override
	public int removeProduct(String productId) {
		return productDao.removeProduct(productId);
	}

	/**
	 * 添加商品
	 * @param product 商品
	 * @return 受影响的行数
	 */
	@Override
	public int addProduct(Product product) {
		return productDao.addProduct(product);
	}

	/**
	 * 修改商品
	 * @param product 商品
	 * @return 受影响的行数
	 */
	@Override
	public int updateProduct(Product product) {
		return productDao.updateProduct(product);
	}

	/**
	 * 分页查询商品
	 * @param pageSize 分页大小
	 * @param pageNumber 分页数
	 * @return 商品集合
	 */
	@Override
	public List<Product> findProductByPage(int pageSize, int pageNumber) {
		//商品集合 所有商品
		List<Product> allProductList=findAllProduct();
		//总记录数
		int totalRecords=allProductList.size();
		//开始数等于分页数-1*分页大小
		int start = (pageNumber-1)*pageSize;
		//结束
		int end=0;
		//如果开始数+分页大小 大于总记录数
		if(start+pageSize>totalRecords){
			//结束数等于总记录数
			end=totalRecords;
		}else{
			//结束数等于开始数+分页大小
			end = start+pageSize;
		}
		//商品集合  调用找到所有商品的方法
		List<Product> partUserList = allProductList.subList(start, end);
		return partUserList;
		
	}
    
	/**
	 * 动态查询商品
	 * @param sql
	 * @return 商品集合
	 */
	@Override
	public List<Product> findProductByDysql(DynamicSql sql) {
        List<Product> products = productDao.findProductByDySql(sql);
		
		return products; 
	}

	/**
	 * 根据商品Id查询商品
	 * @param productId 商品Id
	 * @return 商品对象
	 */
	@Override
	public Product findProductByProductId(String productId) {
		Product product = productDao.findProductByProductId(productId);
		return product;
	}

	/**
	 * 根据分类Id查询商品
	 * @param categoryId 分类Id
	 * @return 商品集合
	 */
	@Override
	public List<Product> findProductByCategoryId(String categoryId) {
		List<Product> product = productDao.findProductByCategoryId(categoryId);
		return product;
	}
	/**
	 * 根据分类Id分页查询商品
	 * @param categoryId 分类Id
	 * @param start 开始
	 * @param end  结束
	 * @return 商品集合
	 */
	@Override
	public List<Product> findPagenationByCategoryId(String categoryId,
			int start, int end) {
        List<Product> products = productDao.findPagenationByCategoryId(categoryId,start,end);
		
		return products; 
	}
	/**
	 * 根据品牌名分页查询商品
	 * @param brandName 品牌名
	 * @param start 开始
	 * @param end  结束
	 * @return 商品集合
	 */
	@Override
	public List<Product> findPagenationByBrandName(String brandName,int start,int end) {
		List<Product> products = productDao.findPagenationBybrandName(brandName, start, end);
        
		return products;
	}
	/**
	 * 根据品牌名查询商品
	 * @param brandName 品牌名
	 * @return 商品集合
	 */
	@Override
	public List<Product> findProductByBrandName(String brandName) {
		List<Product> product = productDao.findProductByBrandName(brandName);
		return product;
	}

}
