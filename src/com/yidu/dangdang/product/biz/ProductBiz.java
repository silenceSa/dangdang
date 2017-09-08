package com.yidu.dangdang.product.biz;

import java.util.List;

import com.yidu.dangdang.product.domain.Product;
import com.yidu.dangdang.util.DynamicSql;

/**
 * 商品Biz
 * @author 陈涛
 * @since  2017/7/3
 */
public interface ProductBiz {

	
	/**
	 * 找到所有的分类
	 * @return 分类节点集合
	 */
	public abstract List<Product> findAllProduct();
	
	/**
	 * 移除分类
	 * @param productId 分类ID
	 * @return 影响的行数
	 */
	public abstract int removeProduct(String productId); 
	
	
    /**
     * 添加分类	
     * @return 影响的行数 
     */
	public abstract int addProduct(Product product);
	
	
	/**
	 * 修改分类
	 * @param product 分类对象
	 * @return 影响的行数
	 */
	public abstract int updateProduct(Product product);
	/**
	 * 分页查询
	 * @param pageSize    分页大小
	 * @param pageNumber  分页数
	 * @return 商品集合
	 */
	public List<Product> findProductByPage(int pageSize,int pageNumber);
	
	/**
	 * 动态查询商品
	 * @param sql 
	 * @return 商品集合
	 */
	public List<Product> findProductByDysql(DynamicSql sql);
	
	/**
	 * 根据商品Id查询商品
	 * @param productId 商品Id
	 * @return 商品对象
	 */
	public Product findProductByProductId(String productId);
	
	/**
	 * 根据品牌名查询商品
	 * @param brandName 品牌名
	 * @return 商品集合
	 */
	public List<Product> findProductByBrandName(String brandName);
	
	/**
	 * 根据品牌名分页查询商品
	 * @param brandName 品牌名
	 * @param start 开始
	 * @param end  结束
	 * @return 商品集合
	 */
	public List<Product> findPagenationByBrandName(String brandName,int start,int end);

	/**
	 * 根据分类Id查询商品
	 * @param categoryId 分类Id
	 * @return 商品集合
	 */
	public List<Product> findProductByCategoryId(String categoryId);
	/**
	 * 根据分类Id分页查询商品
	 * @param categoryId 分类Id
	 * @param start 开始
	 * @param end  结束
	 * @return 商品集合
	 */
	public List<Product> findPagenationByCategoryId(String categoryId,int start,int end);
}
