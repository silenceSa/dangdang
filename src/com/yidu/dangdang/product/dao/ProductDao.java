package com.yidu.dangdang.product.dao;

import java.util.List;

import com.yidu.dangdang.product.domain.Product;
import com.yidu.dangdang.util.DynamicSql;

/**
 * 商品DAO接口
 * @author 陈涛
 * @since 2017/5/30
 * 
 */
public interface ProductDao {

	/**
	 * 根据商品Id查询
	 * @param name
	 * @return
	 */
	public abstract Product findProductByProductId(String productId);
	
	/**
	 * 根据分类Id查询商品
	 * @param categoryId
	 * @return
	 */
	public abstract List<Product> findProductByCategoryId(String categoryId);
	
	/**
	 * 根据品牌名查询商品
	 * @param brandName
	 * @return
	 */
	public abstract List<Product> findProductByBrandName(String brandName);
	
	/**
	 * 查询所有的分类
	 * @return 分类集合
	 */
	public abstract List<Product> findAllProduct();
	
	/**
	 * 移除分类的方法
	 * @param productId  分类ID
	 * @return 影响的行数
	 */
	public abstract int removeProduct(String productId);
	
	
	
	/**
	 * 修改商品
	 * @param product  分类对象
	 * @return  影响的行数
	 */
	public abstract int updateProduct(Product product);
	
	
	
	/**
	 * 添加分类
	 * @param product  分类对象
	 * @return 影响的行数
	 */
	public abstract int addProduct(Product product);
    
	/**
	 * 查询商品
	 * @param sql
	 * @return
	 */
	public abstract List<Product> findProductByDySql(DynamicSql sql);
	
	/**
	 * 根据分类Id分页查询
	 * @param categoryId 
	 * @param start
	 * @param end
	 * @return
	 */
	public abstract List<Product> findPagenationByCategoryId(String categoryId,int start,int end);
	
	/**
	 * 根据品牌名分页查询商品
	 * @param brandName
	 * @param start
	 * @param end
	 * @return
	 */
	public abstract List<Product> findPagenationBybrandName(String brandName,int start,int end);

	/**
	 * 根据商品名分页查询商品
	 * @param productName
	 * @param start
	 * @param end
	 * @return
	 */
    public abstract List<Product> findProductByProductName(String productName,int start,int end);
    
    /**
     * 根据商品名查询商品
     * @param productName
     * @return
     */
    public abstract List<Product> findProductByProductName(String productName);
}
