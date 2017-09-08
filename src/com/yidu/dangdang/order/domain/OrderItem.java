package com.yidu.dangdang.order.domain;

import java.math.BigDecimal;

public class OrderItem {
    private String orderitemId;
    private String productId;
    private int num;
    private String orderId;
    private String productName;
    private BigDecimal price;
    private BigDecimal subtotal;
    private String image;
    
    public OrderItem(){
    	
    }

	public String getOrderitemId() {
		return orderitemId;
	}

	public void setOrderitemId(String orderitemId) {
		this.orderitemId = orderitemId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((image == null) ? 0 : image.hashCode());
		result = prime * result + num;
		result = prime * result + ((orderId == null) ? 0 : orderId.hashCode());
		result = prime * result
				+ ((orderitemId == null) ? 0 : orderitemId.hashCode());
		result = prime * result + ((price == null) ? 0 : price.hashCode());
		result = prime * result
				+ ((productId == null) ? 0 : productId.hashCode());
		result = prime * result
				+ ((productName == null) ? 0 : productName.hashCode());
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
		OrderItem other = (OrderItem) obj;
		if (image == null) {
			if (other.image != null)
				return false;
		} else if (!image.equals(other.image))
			return false;
		if (num != other.num)
			return false;
		if (orderId == null) {
			if (other.orderId != null)
				return false;
		} else if (!orderId.equals(other.orderId))
			return false;
		if (orderitemId == null) {
			if (other.orderitemId != null)
				return false;
		} else if (!orderitemId.equals(other.orderitemId))
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
		if (subtotal == null) {
			if (other.subtotal != null)
				return false;
		} else if (!subtotal.equals(other.subtotal))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "OrderItem [orderitemId=" + orderitemId + ", productId="
				+ productId + ", num=" + num + ", orderId=" + orderId
				+ ", productName=" + productName + ", price=" + price
				+ ", subtotal=" + subtotal + ", image=" + image + "]";
	}

	public OrderItem(String orderitemId, String productId, int num,
			String orderId, String productName, BigDecimal price,
			BigDecimal subtotal, String image) {
		super();
		this.orderitemId = orderitemId;
		this.productId = productId;
		this.num = num;
		this.orderId = orderId;
		this.productName = productName;
		this.price = price;
		this.subtotal = subtotal;
		this.image = image;
	}
    
}
