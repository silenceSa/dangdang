package com.yidu.dangdang.order.domain;

import java.math.BigDecimal;

public class OrderDetail {
    
	private String image;
    private String productName;
    private BigDecimal price;
    private int num;
    private BigDecimal subtotal;
    private String productId; 
    
    public OrderDetail(){
    	
    }

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
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

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public BigDecimal getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(BigDecimal subtotal) {
		this.subtotal = subtotal;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public OrderDetail(String image, String productName, BigDecimal price,
			int num, BigDecimal subtotal, String productId) {
		super();
		this.image = image;
		this.productName = productName;
		this.price = price;
		this.num = num;
		this.subtotal = subtotal;
		this.productId = productId;
	}

	@Override
	public String toString() {
		return "OrderDetail [image=" + image + ", productName=" + productName
				+ ", price=" + price + ", num=" + num + ", subtotal="
				+ subtotal + ", productId=" + productId + "]";
	}

	
	
	
}
