package com.yidu.dangdang.customer.domain;

public class Customer {
	private String customerId;
	private String customerName;
	private String pwd;
	private String phoneNum;
	private int customerStatus;
	private String activationStatus;
	private String desc1;
	private String desc2;
	private String desc3;
	
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String cuctomerName) {
		this.customerName = cuctomerName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public int getCustomerStatus() {
		return customerStatus;
	}
	public void setCustomerStatus(int customerStatus) {
		this.customerStatus = customerStatus;
	}
	public String getActivationStatus() {
		return activationStatus;
	}
	public void setActivationStatus(String activationStatus) {
		this.activationStatus = activationStatus;
	}
	public String getDesc1() {
		return desc1;
	}
	public void setDesc1(String desc1) {
		this.desc1 = desc1;
	}
	public String getDesc2() {
		return desc2;
	}
	public void setDesc2(String desc2) {
		this.desc2 = desc2;
	}
	public String getDesc3() {
		return desc3;
	}
	public void setDesc3(String desc3) {
		this.desc3 = desc3;
	}
	
	public Customer(){
		
	}
	
	public Customer(String customerId, String customerName, String pwd,
			String phoneNum, int customerStatus, String activationStatus,
			String desc1, String desc2, String desc3) {
		super();
		this.customerId = customerId;
		this.customerName = customerName;
		this.pwd = pwd;
		this.phoneNum = phoneNum;
		this.customerStatus = customerStatus;
		this.activationStatus = activationStatus;
		this.desc1 = desc1;
		this.desc2 = desc2;
		this.desc3 = desc3;
	}
	
	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", cuctomerName="
				+ customerName + ", pwd=" + pwd + ", phoneNum=" + phoneNum
				+ ", customerStatus=" + customerStatus + ", activationStatus="
				+ activationStatus + ", desc1=" + desc1 + ", desc2=" + desc2
				+ ", desc3=" + desc3 + "]";
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime
				* result
				+ ((activationStatus == null) ? 0 : activationStatus.hashCode());
		result = prime * result
				+ ((customerName == null) ? 0 : customerName.hashCode());
		result = prime * result
				+ ((customerId == null) ? 0 : customerId.hashCode());
		result = prime * result + customerStatus;
		result = prime * result + ((desc1 == null) ? 0 : desc1.hashCode());
		result = prime * result + ((desc2 == null) ? 0 : desc2.hashCode());
		result = prime * result + ((desc3 == null) ? 0 : desc3.hashCode());
		result = prime * result
				+ ((phoneNum == null) ? 0 : phoneNum.hashCode());
		result = prime * result + ((pwd == null) ? 0 : pwd.hashCode());
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
		Customer other = (Customer) obj;
		if (activationStatus == null) {
			if (other.activationStatus != null)
				return false;
		} else if (!activationStatus.equals(other.activationStatus))
			return false;
		if (customerName == null) {
			if (other.customerName != null)
				return false;
		} else if (!customerName.equals(other.customerName))
			return false;
		if (customerId == null) {
			if (other.customerId != null)
				return false;
		} else if (!customerId.equals(other.customerId))
			return false;
		if (customerStatus != other.customerStatus)
			return false;
		if (desc1 == null) {
			if (other.desc1 != null)
				return false;
		} else if (!desc1.equals(other.desc1))
			return false;
		if (desc2 == null) {
			if (other.desc2 != null)
				return false;
		} else if (!desc2.equals(other.desc2))
			return false;
		if (desc3 == null) {
			if (other.desc3 != null)
				return false;
		} else if (!desc3.equals(other.desc3))
			return false;
		if (phoneNum == null) {
			if (other.phoneNum != null)
				return false;
		} else if (!phoneNum.equals(other.phoneNum))
			return false;
		if (pwd == null) {
			if (other.pwd != null)
				return false;
		} else if (!pwd.equals(other.pwd))
			return false;
		return true;
	}
}
