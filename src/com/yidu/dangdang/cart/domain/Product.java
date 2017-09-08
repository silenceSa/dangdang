package com.yidu.dangdang.cart.domain;

public class Product {
	private 	String productId;
	private String productName;
	private double price;
	private double currPrice;
	private double discount;
	private double freight;
	private String size;
	private int num;
	private String brandName;
	private String image_h;
	private String image_s;
	private String image_s1;
	private String image_s2;
	private String image_s3;
	private String image_s4;
	private String image_s5;
	private String categroyId;
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getCurrPrice() {
		return currPrice;
	}
	public void setCurrPrice(double currPrice) {
		this.currPrice = currPrice;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public double getFreight() {
		return freight;
	}
	public void setFreight(double freight) {
		this.freight = freight;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getImage_h() {
		return image_h;
	}
	public void setImage_h(String image_h) {
		this.image_h = image_h;
	}
	public String getImage_s() {
		return image_s;
	}
	public void setImage_s(String image_s) {
		this.image_s = image_s;
	}
	public String getImage_s1() {
		return image_s1;
	}
	public void setImage_s1(String image_s1) {
		this.image_s1 = image_s1;
	}
	public String getImage_s2() {
		return image_s2;
	}
	public void setImage_s2(String image_s2) {
		this.image_s2 = image_s2;
	}
	public String getImage_s3() {
		return image_s3;
	}
	public void setImage_s3(String image_s3) {
		this.image_s3 = image_s3;
	}
	public String getImage_s4() {
		return image_s4;
	}
	public void setImage_s4(String image_s4) {
		this.image_s4 = image_s4;
	}
	public String getImage_s5() {
		return image_s5;
	}
	public void setImage_s5(String image_s5) {
		this.image_s5 = image_s5;
	}
	public String getCategroyId() {
		return categroyId;
	}
	public void setCategroyId(String categroyId) {
		this.categroyId = categroyId;
	}
	public Product(String productId, String productName, double price,
			double currPrice, double discount, double freight, String size,
			int num, String brandName, String image_h, String image_s,
			String image_s1, String image_s2, String image_s3, String image_s4,
			String image_s5, String categroyId) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.currPrice = currPrice;
		this.discount = discount;
		this.freight = freight;
		this.size = size;
		this.num = num;
		this.brandName = brandName;
		this.image_h = image_h;
		this.image_s = image_s;
		this.image_s1 = image_s1;
		this.image_s2 = image_s2;
		this.image_s3 = image_s3;
		this.image_s4 = image_s4;
		this.image_s5 = image_s5;
		this.categroyId = categroyId;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((brandName == null) ? 0 : brandName.hashCode());
		result = prime * result
				+ ((categroyId == null) ? 0 : categroyId.hashCode());
		long temp;
		temp = Double.doubleToLongBits(currPrice);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(discount);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(freight);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((image_h == null) ? 0 : image_h.hashCode());
		result = prime * result + ((image_s == null) ? 0 : image_s.hashCode());
		result = prime * result
				+ ((image_s1 == null) ? 0 : image_s1.hashCode());
		result = prime * result
				+ ((image_s2 == null) ? 0 : image_s2.hashCode());
		result = prime * result
				+ ((image_s3 == null) ? 0 : image_s3.hashCode());
		result = prime * result
				+ ((image_s4 == null) ? 0 : image_s4.hashCode());
		result = prime * result
				+ ((image_s5 == null) ? 0 : image_s5.hashCode());
		result = prime * result + num;
		temp = Double.doubleToLongBits(price);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result
				+ ((productId == null) ? 0 : productId.hashCode());
		result = prime * result
				+ ((productName == null) ? 0 : productName.hashCode());
		result = prime * result + ((size == null) ? 0 : size.hashCode());
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
		Product other = (Product) obj;
		if (brandName == null) {
			if (other.brandName != null)
				return false;
		} else if (!brandName.equals(other.brandName))
			return false;
		if (categroyId == null) {
			if (other.categroyId != null)
				return false;
		} else if (!categroyId.equals(other.categroyId))
			return false;
		if (Double.doubleToLongBits(currPrice) != Double
				.doubleToLongBits(other.currPrice))
			return false;
		if (Double.doubleToLongBits(discount) != Double
				.doubleToLongBits(other.discount))
			return false;
		if (Double.doubleToLongBits(freight) != Double
				.doubleToLongBits(other.freight))
			return false;
		if (image_h == null) {
			if (other.image_h != null)
				return false;
		} else if (!image_h.equals(other.image_h))
			return false;
		if (image_s == null) {
			if (other.image_s != null)
				return false;
		} else if (!image_s.equals(other.image_s))
			return false;
		if (image_s1 == null) {
			if (other.image_s1 != null)
				return false;
		} else if (!image_s1.equals(other.image_s1))
			return false;
		if (image_s2 == null) {
			if (other.image_s2 != null)
				return false;
		} else if (!image_s2.equals(other.image_s2))
			return false;
		if (image_s3 == null) {
			if (other.image_s3 != null)
				return false;
		} else if (!image_s3.equals(other.image_s3))
			return false;
		if (image_s4 == null) {
			if (other.image_s4 != null)
				return false;
		} else if (!image_s4.equals(other.image_s4))
			return false;
		if (image_s5 == null) {
			if (other.image_s5 != null)
				return false;
		} else if (!image_s5.equals(other.image_s5))
			return false;
		if (num != other.num)
			return false;
		if (Double.doubleToLongBits(price) != Double
				.doubleToLongBits(other.price))
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
		if (size == null) {
			if (other.size != null)
				return false;
		} else if (!size.equals(other.size))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName="
				+ productName + ", price=" + price + ", currPrice=" + currPrice
				+ ", discount=" + discount + ", freight=" + freight + ", size="
				+ size + ", num=" + num + ", brandName=" + brandName
				+ ", image_h=" + image_h + ", image_s=" + image_s
				+ ", image_s1=" + image_s1 + ", image_s2=" + image_s2
				+ ", image_s3=" + image_s3 + ", image_s4=" + image_s4
				+ ", image_s5=" + image_s5 + ", categroyId=" + categroyId + "]";
	}
	
	public Product(){
		
	}
	
	
	
	
	
	
	
	
	
	
}
