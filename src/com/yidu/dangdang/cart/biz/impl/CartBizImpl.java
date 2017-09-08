package com.yidu.dangdang.cart.biz.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import com.yidu.dangdang.cart.biz.CartBiz;
import com.yidu.dangdang.cart.dao.CartDao;
import com.yidu.dangdang.cart.dao.impl.CartDaoImpl;
import com.yidu.dangdang.cart.domain.Cart;

public class CartBizImpl implements CartBiz{

	//保留对DAO层的引用
	private CartDao cartDao = new CartDaoImpl();
	
	@Override
	public List<Cart> findCartByCus(String customerId) {
		return cartDao.findCartByCus(customerId);
	}

	@Override
	public boolean delectProduct(String cartId,String productId) {
		return cartDao.delectProduct(cartId,productId);
	}

	@Override
	public Cart updateProductNum(String cartId, int productNum,BigDecimal subtotal) {
		cartDao.updateProductNum(cartId, productNum,subtotal);
		return  cartDao.findByCartId(cartId);
	}

	@Override
	public Cart findByCart(String cartId) {
		return cartDao.findByCartId(cartId);
	}

	@Override
	public boolean addCartItem(Cart cart) {
		//通过商品ID查找购物车中是否有对应的购物车条目
		String customerId = cart.getCustomerId();
		String productId = cart.getProductId();
		Cart cartItem = cartDao.findCartByCustomerIdAndProduct(customerId, productId);
		
		if(cartItem== null){
			return cartDao.addCart(cart);
		}else{
			int productNum = cart.getProductNum()+cartItem.getProductNum();
			BigDecimal subtotal =cart.getPrice().multiply(BigDecimal.valueOf(productNum));
			return cartDao.updataNumByProductId(subtotal, productNum, 
					productId);
			
		}
	}

	@Override
	public Cart findByProductId(String productId) {
		return cartDao.findProductById(productId);
	}

	@Override
	public Cart findCartByProductId(String productId) {
		return cartDao.findCartByProductId(productId);
	}

	@Override
	public boolean updateNumByProductId(String productId, BigDecimal subtotal,
			int productNum) {
		return cartDao.updataNumByProductId(subtotal, productNum, productId);
	}

	@Override
	public List<Cart> loadCartItems(String customerId) {
		return cartDao.findCartByCus(customerId);
	}

	public List<String> findCityByProvince(String province) {
		return cartDao.findCityByProvince(province);
	}
	
	public List<String> findAllProvince(){
        return cartDao.findAllProvince();		
	}
	
	public List<String> findAreaByCity(String cityName){
		return cartDao.findAreaByCity(cityName);
	}

	@Override
	public void batchDelete(String[] cartId) {
		//循环遍历购物车条目ID号的字符串数组，调用dao中的deleteCartItem方法进行删除
		for(String cid : cartId){
			cartDao.delectProduct(cid,null);
		}
		
	}

	@Override
	public List<Cart> loadCartItemss(String[] cartItemIds) {
		List<Cart> cartList = new ArrayList<Cart>();
		//2.遍历购物车条目ID号数组，得到购物车条目对象，加入到购物车条目集合中
		for(String cid : cartItemIds){
			Cart cart = cartDao.findByCartId(cid);
			cartList.add(cart);
		}
		return cartList;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
