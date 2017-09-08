package com.yidu.dangdang.cart.domain;

import java.math.BigDecimal;

/**
 * 购物车实体类
 * @author 鲁静芝
 * @since 2017/06/07
 */
public class Cart {
	/**
	 * 购物Id
	 */
	private String cartId;
	/**
	 * 商品Id
	 */
	private String productId;
	/**
	 * 商品数量	
	 */
	private int productNum;
	/**
	 * 用户Id
	 */
	private String customerId;
	/**
	 * 商品名
	 */
	private String productName;
	/**
	 * 单价
	 */
	private BigDecimal price;
	/**
	 * 小计
	 */
	private BigDecimal subtotal;
	/**
	 * 尺码
	 */
	private String size;
	/**
	 * 商品图片
	 */
	private String picture;
	
	public String getCartId() {
		return cartId;
	}
	public void setCartId(String cartId) {
		this.cartId = cartId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public BigDecimal getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(BigDecimal subtotal) {
		this.subtotal = subtotal;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public Cart(String cartId, String productId, int productNum,
			String customerId, String productName, BigDecimal price,
			BigDecimal subtotal, String size, String picture) {
		super();
		this.cartId = cartId;
		this.productId = productId;
		this.productNum = productNum;
		this.customerId = customerId;
		this.productName = productName;
		this.price = price;
		this.subtotal = subtotal;
		this.size = size;
		this.picture = picture;
	}
	
	public Cart(){
		
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cartId == null) ? 0 : cartId.hashCode());
		result = prime * result
				+ ((customerId == null) ? 0 : customerId.hashCode());
		result = prime * result + ((picture == null) ? 0 : picture.hashCode());
		result = prime * result + ((price == null) ? 0 : price.hashCode());
		result = prime * result
				+ ((productId == null) ? 0 : productId.hashCode());
		result = prime * result
				+ ((productName == null) ? 0 : productName.hashCode());
		result = prime * result + productNum;
		result = prime * result + ((size == null) ? 0 : size.hashCode());
		result = prime * result
				+ ((subtotal == null) ? 0 : subtotal.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cart other = (Cart) obj;
		if (cartId == null) {
			if (other.cartId != null)
				return false;
		} else if (!cartId.equals(other.cartId))
			return false;
		if (customerId == null) {
			if (other.customerId != null)
				return false;
		} else if (!customerId.equals(other.customerId))
			return false;
		if (picture == null) {
			if (other.picture != null)
				return false;
		} else if (!picture.equals(other.picture))
			return false;
		if (price == null) {
			if (other.price != null)
				return false;
		} else if (!price.equals(other.price))
			return false;
		if (productId == null) {
			if (other.productId != null)
				return false;
		} else if (!productId.equals(other.productId))
			return false;
		if (productName == null) {
			if (other.productName != null)
				return false;
		} else if (!productName.equals(other.productName))
			return false;
		if (productNum != other.productNum)
			return false;
		if (size == null) {
			if (other.size != null)
				return false;
		} else if (!size.equals(other.size))
			return false;
		if (subtotal == null) {
			if (other.subtotal != null)
				return false;
		} else if (!subtotal.equals(other.subtotal))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", productId=" + productId
				+ ", productNum=" + productNum + ", customerId=" + customerId
				+ ", productName=" + productName + ", price=" + price
				+ ", subtotal=" + subtotal + ", size=" + size + ", picture="
				+ picture + "]";
	}
	
	
	
	
	
	
	
}
