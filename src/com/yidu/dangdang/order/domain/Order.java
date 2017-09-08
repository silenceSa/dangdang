package com.yidu.dangdang.order.domain;

import java.util.List;

import com.yidu.dangdang.customer.domain.Customer;

public class Order {

	private String orderId;
    private String orderTime;
    private int orderStatus;
    private String address;
    private double totalPrice;
    private String customerId;
    private String consignee;
    private String recPhone;
    private Customer customer;
    private List<OrderDetail> orderD;
    private List<OrderItem> orderI;
    
    
    
    public Order(){
    	
    }



	public String getOrderId() {
		return orderId;
	}



	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}



	public String getOrderTime() {
		return orderTime;
	}



	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}



	public int getOrderStatus() {
		return orderStatus;
	}



	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public double getTotalPrice() {
		return totalPrice;
	}



	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}



	public String getCustomerId() {
		return customerId;
	}



	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}



	public String getConsignee() {
		return consignee;
	}



	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}



	public String getRecPhone() {
		return recPhone;
	}



	public void setRecPhone(String recPhone) {
		this.recPhone = recPhone;
	}



	public Customer getCustomer() {
		return customer;
	}



	public void setCustomer(Customer customer) {
		this.customer = customer;
	}



	public List<OrderDetail> getOrderD() {
		return orderD;
	}



	public void setOrderD(List<OrderDetail> orderD) {
		this.orderD = orderD;
	}



	public List<OrderItem> getOrderI() {
		return orderI;
	}



	public void setOrderI(List<OrderItem> orderI) {
		this.orderI = orderI;
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result
				+ ((consignee == null) ? 0 : consignee.hashCode());
		result = prime * result
				+ ((customer == null) ? 0 : customer.hashCode());
		result = prime * result
				+ ((customerId == null) ? 0 : customerId.hashCode());
		result = prime * result + ((orderD == null) ? 0 : orderD.hashCode());
		result = prime * result + ((orderI == null) ? 0 : orderI.hashCode());
		result = prime * result + ((orderId == null) ? 0 : orderId.hashCode());
		result = prime * result + orderStatus;
		result = prime * result
				+ ((orderTime == null) ? 0 : orderTime.hashCode());
		result = prime * result
				+ ((recPhone == null) ? 0 : recPhone.hashCode());
		long temp;
		temp = Double.doubleToLongBits(totalPrice);
		result = prime * result + (int) (temp ^ (temp >>> 32));
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
		Order other = (Order) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (consignee == null) {
			if (other.consignee != null)
				return false;
		} else if (!consignee.equals(other.consignee))
			return false;
		if (customer == null) {
			if (other.customer != null)
				return false;
		} else if (!customer.equals(other.customer))
			return false;
		if (customerId == null) {
			if (other.customerId != null)
				return false;
		} else if (!customerId.equals(other.customerId))
			return false;
		if (orderD == null) {
			if (other.orderD != null)
				return false;
		} else if (!orderD.equals(other.orderD))
			return false;
		if (orderI == null) {
			if (other.orderI != null)
				return false;
		} else if (!orderI.equals(other.orderI))
			return false;
		if (orderId == null) {
			if (other.orderId != null)
				return false;
		} else if (!orderId.equals(other.orderId))
			return false;
		if (orderStatus != other.orderStatus)
			return false;
		if (orderTime == null) {
			if (other.orderTime != null)
				return false;
		} else if (!orderTime.equals(other.orderTime))
			return false;
		if (recPhone == null) {
			if (other.recPhone != null)
				return false;
		} else if (!recPhone.equals(other.recPhone))
			return false;
		if (Double.doubleToLongBits(totalPrice) != Double
				.doubleToLongBits(other.totalPrice))
			return false;
		return true;
	}



	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderTime=" + orderTime
				+ ", orderStatus=" + orderStatus + ", address=" + address
				+ ", totalPrice=" + totalPrice + ", customerId=" + customerId
				+ ", consignee=" + consignee + ", recPhone=" + recPhone
				+ ", customer=" + customer + ", orderD=" + orderD + ", orderI="
				+ orderI + "]";
	}



	public Order(String orderId, String orderTime, int orderStatus,
			String address, double totalPrice, String customerId,
			String consignee, String recPhone, Customer customer,
			List<OrderDetail> orderD, List<OrderItem> orderI) {
		super();
		this.orderId = orderId;
		this.orderTime = orderTime;
		this.orderStatus = orderStatus;
		this.address = address;
		this.totalPrice = totalPrice;
		this.customerId = customerId;
		this.consignee = consignee;
		this.recPhone = recPhone;
		this.customer = customer;
		this.orderD = orderD;
		this.orderI = orderI;
	}
	


    
    
}
