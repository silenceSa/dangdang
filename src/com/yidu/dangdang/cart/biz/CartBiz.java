package com.yidu.dangdang.cart.biz;

import java.math.BigDecimal;
import java.util.List;

import com.yidu.dangdang.cart.domain.Cart;

public interface CartBiz {
	/**
	 * 通过用户查找购物车
	 * @param customerId	用户id
	 * @return 购物车集合
	 */
	public abstract List<Cart> findCartByCus(String customerId);

	public abstract Cart updateProductNum(String cartId,int productNum, BigDecimal subtotal);
	
	public abstract boolean delectProduct(String cartId, String productId);
	
	public abstract Cart findByCart(String cartId);
	
	public abstract boolean addCartItem(Cart cart);
	
	public abstract Cart findByProductId(String productId);
	
	public abstract Cart findCartByProductId(String productId);
	
	public abstract boolean updateNumByProductId(String productId,BigDecimal subtotal,int productNum);
	
	public abstract List<Cart> loadCartItems(String customerId);

	public abstract List<String> findAllProvince();

	public abstract List<String> findAreaByCity(String cityName);

	public abstract List<String> findCityByProvince(String province);
	
	public abstract void batchDelete(String[] cartId);
	
	public abstract List<Cart> loadCartItemss(String[] cartItemIds);
}
