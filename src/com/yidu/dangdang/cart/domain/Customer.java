package com.yidu.dangdang.cart.domain;

public class Customer {
		private String customerId;
		private String customerName;
		private String pwd;
		private String phoneNum;
		private int customerStatus;
		private String activationStatus;
		public String getCustomerId() {
			return customerId;
		}
		public void setCustomerId(String customerId) {
			this.customerId = customerId;
		}
		public String getCustomerName() {
			return customerName;
		}
		public void setCustomerName(String customerName) {
			this.customerName = customerName;
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
		public Customer(String customerId, String customerName, String pwd,
				String phoneNum, int customerStatus, String activationStatus) {
			super();
			this.customerId = customerId;
			this.customerName = customerName;
			this.pwd = pwd;
			this.phoneNum = phoneNum;
			this.customerStatus = customerStatus;
			this.activationStatus = activationStatus;
		}
		
		public Customer(){
			
		}
		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime
					* result
					+ ((activationStatus == null) ? 0 : activationStatus
							.hashCode());
			result = prime * result
					+ ((customerId == null) ? 0 : customerId.hashCode());
			result = prime * result
					+ ((customerName == null) ? 0 : customerName.hashCode());
			result = prime * result + customerStatus;
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
			if (customerId == null) {
				if (other.customerId != null)
					return false;
			} else if (!customerId.equals(other.customerId))
				return false;
			if (customerName == null) {
				if (other.customerName != null)
					return false;
			} else if (!customerName.equals(other.customerName))
				return false;
			if (customerStatus != other.customerStatus)
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
		@Override
		public String toString() {
			return "Customer [customerId=" + customerId + ", customerName="
					+ customerName + ", pwd=" + pwd + ", phoneNum=" + phoneNum
					+ ", customerStatus=" + customerStatus
					+ ", activationStatus=" + activationStatus + "]";
		}
}
