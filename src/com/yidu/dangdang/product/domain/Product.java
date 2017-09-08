package com.yidu.dangdang.product.domain;


/**
 * 分类bean
 * @author 陈涛
 * @since 2017/5/30
 */
public class Product {

	/**
	 * 商品编号
	 */
	private String productId;
	/**
	 * 商品名
	 */
	private String productName;
	/**
	 * 定价
	 */
	private Double price;
	/**
	 * 当前价
	 */
	private Double currPrice;
	/**
	 * 折扣
	 */
	private Double discount;
	/**
	 * 运费
	 */
	private Double freight;
	/**
	 * 尺寸
	 */
	private String size;
	/**
	 * 数量
	 */
	private int num;
	/**
	 * 品牌名
	 */
	private String brandName;
	/**
	 * 超大图
	 */
	private String image_h;
	/**
	 * 大图
	 */
	private String image_b;
	/**
	 * 小图1
	 */
	private String image_s1;
	/**
	 * 小图2
	 */
	private String image_s2;
	/**
	 * 小图3
	 */
	private String image_s3;
	/**
	 * 小图4
	 */
	private String image_s4;
	/**
	 * 小图5
	 */
	private String image_s5;
	/**
	 * 分类Id
	 */
	private String categoryId;
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName="
				+ productName + ", price=" + price + ", currPrice=" + currPrice
				+ ", discount=" + discount + ", freight=" + freight + ", size="
				+ size + ", num=" + num + ", brandName=" + brandName
				+ ", image_h=" + image_h + ", image_b=" + image_b
				+ ", image_s1=" + image_s1 + ", image_s2=" + image_s2
				+ ", image_s3=" + image_s3 + ", image_s4=" + image_s4
				+ ", image_s5=" + image_s5 + ", categoryId=" + categoryId
				+ ", Desc1=" + Desc1 + ", Desc2=" + Desc2 + ", Desc3=" + Desc3
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((Desc1 == null) ? 0 : Desc1.hashCode());
		result = prime * result + ((Desc2 == null) ? 0 : Desc2.hashCode());
		result = prime * result + ((Desc3 == null) ? 0 : Desc3.hashCode());
		result = prime * result
				+ ((brandName == null) ? 0 : brandName.hashCode());
		result = prime * result
				+ ((categoryId == null) ? 0 : categoryId.hashCode());
		result = prime * result
				+ ((currPrice == null) ? 0 : currPrice.hashCode());
		result = prime * result
				+ ((discount == null) ? 0 : discount.hashCode());
		result = prime * result + ((freight == null) ? 0 : freight.hashCode());
		result = prime * result + ((image_b == null) ? 0 : image_b.hashCode());
		result = prime * result + ((image_h == null) ? 0 : image_h.hashCode());
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
		result = prime * result + ((price == null) ? 0 : price.hashCode());
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
		if (Desc1 == null) {
			if (other.Desc1 != null)
				return false;
		} else if (!Desc1.equals(other.Desc1))
			return false;
		if (Desc2 == null) {
			if (other.Desc2 != null)
				return false;
		} else if (!Desc2.equals(other.Desc2))
			return false;
		if (Desc3 == null) {
			if (other.Desc3 != null)
				return false;
		} else if (!Desc3.equals(other.Desc3))
			return false;
		if (brandName == null) {
			if (other.brandName != null)
				return false;
		} else if (!brandName.equals(other.brandName))
			return false;
		if (categoryId == null) {
			if (other.categoryId != null)
				return false;
		} else if (!categoryId.equals(other.categoryId))
			return false;
		if (currPrice == null) {
			if (other.currPrice != null)
				return false;
		} else if (!currPrice.equals(other.currPrice))
			return false;
		if (discount == null) {
			if (other.discount != null)
				return false;
		} else if (!discount.equals(other.discount))
			return false;
		if (freight == null) {
			if (other.freight != null)
				return false;
		} else if (!freight.equals(other.freight))
			return false;
		if (image_b == null) {
			if (other.image_b != null)
				return false;
		} else if (!image_b.equals(other.image_b))
			return false;
		if (image_h == null) {
			if (other.image_h != null)
				return false;
		} else if (!image_h.equals(other.image_h))
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
		if (size == null) {
			if (other.size != null)
				return false;
		} else if (!size.equals(other.size))
			return false;
		return true;
	}

	public Product(String productId, String productName, Double price,
			Double currPrice, Double discount, Double freight, String size,
			int num, String brandName, String image_h, String image_b,
			String image_s1, String image_s2, String image_s3, String image_s4,
			String image_s5, String categoryId, String desc1, String desc2,
			String desc3) {
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
		this.image_b = image_b;
		this.image_s1 = image_s1;
		this.image_s2 = image_s2;
		this.image_s3 = image_s3;
		this.image_s4 = image_s4;
		this.image_s5 = image_s5;
		this.categoryId = categoryId;
		Desc1 = desc1;
		Desc2 = desc2;
		Desc3 = desc3;
	}

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

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getCurrPrice() {
		return currPrice;
	}

	public void setCurrPrice(Double currPrice) {
		this.currPrice = currPrice;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public Double getFreight() {
		return freight;
	}

	public void setFreight(Double freight) {
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

	public String getImage_b() {
		return image_b;
	}

	public void setImage_b(String image_b) {
		this.image_b = image_b;
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

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getDesc1() {
		return Desc1;
	}

	public void setDesc1(String desc1) {
		Desc1 = desc1;
	}

	public String getDesc2() {
		return Desc2;
	}

	public void setDesc2(String desc2) {
		Desc2 = desc2;
	}

	public String getDesc3() {
		return Desc3;
	}

	public void setDesc3(String desc3) {
		Desc3 = desc3;
	}

	/**
	 * Desc1
	 */
	private String Desc1;
	/**
	 * Desc2
	 */
	private String Desc2;
	/**
	 * Desc3
	 */
	private String Desc3;
	
	public Product(){}

	
}




















