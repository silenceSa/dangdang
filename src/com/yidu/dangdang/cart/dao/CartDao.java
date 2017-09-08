package com.yidu.dangdang.cart.dao;

import java.math.BigDecimal;
import java.util.List;

import com.yidu.dangdang.cart.domain.Cart;

public interface CartDao {
	/**
	 * 通过用户查找购物车商品
	 * @return
	 */
	public List<Cart> findCartByCus(String customerId);
	
	public abstract boolean updateProductNum(String cartId,int productNum, BigDecimal subtotal);
	
	public abstract boolean delectProduct(String cartId, String productId);
	
	public abstract Cart findCartByCustomerIdAndProduct(String customerId, String productId);

	public abstract Cart findByCartId(String cartId);
	
	public abstract boolean addCart(Cart cart);
	
	public abstract Cart findProductById(String productId);
	
	public abstract Cart findCartByProductId(String productId);
	
	public abstract boolean updataNumByProductId(BigDecimal subtotal,int productNum,String productId);

	public abstract List<String> findCityByProvince(String province);
	public abstract List<String> findAllProvince();
	public abstract List<String> findAreaByCity(String cityName);
	






}
