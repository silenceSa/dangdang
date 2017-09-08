package com.yidu.dangdang.admin.domain;

/**
 * 管理员日志对象
 * @author youngboy
 * @since 2017/6/11
 */
public class AdminLog {
	
	private String logId;
	
	private String operType;
	
	private String operDetail;
	
	private String operResult;
	
	private String adminName;
	
	private String loginIp;
	
	private String loginTime;

	/**
	 * @return the logId
	 */
	public String getLogId() {
		return logId;
	}

	/**
	 * @param logId the logId to set
	 */
	public void setLogId(String logId) {
		this.logId = logId;
	}

	/**
	 * @return the operType
	 */
	public String getOperType() {
		return operType;
	}

	/**
	 * @param operType the operType to set
	 */
	public void setOperType(String operType) {
		this.operType = operType;
	}

	/**
	 * @return the operDetail
	 */
	public String getOperDetail() {
		return operDetail;
	}

	/**
	 * @param operDetail the operDetail to set
	 */
	public void setOperDetail(String operDetail) {
		this.operDetail = operDetail;
	}

	/**
	 * @return the operResult
	 */
	public String getOperResult() {
		return operResult;
	}

	/**
	 * @param operResult the operResult to set
	 */
	public void setOperResult(String operResult) {
		this.operResult = operResult;
	}

	/**
	 * @return the adminName
	 */
	public String getAdminName() {
		return adminName;
	}

	/**
	 * @param adminName the adminName to set
	 */
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	/**
	 * @return the loginIp
	 */
	public String getLoginIp() {
		return loginIp;
	}

	/**
	 * @param loginIp the loginIp to set
	 */
	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}

	/**
	 * @return the loginTime
	 */
	public String getLoginTime() {
		return loginTime;
	}

	/**
	 * @param loginTime the loginTime to set
	 */
	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}
	
	public AdminLog(){}

	/**
	 * @param logId
	 * @param operType
	 * @param operDetail
	 * @param operResult
	 * @param adminName
	 * @param loginIp
	 * @param loginTime
	 */
	public AdminLog(String logId, String operType, String operDetail,
			String operResult, String adminName, String loginIp,
			String loginTime) {
		super();
		this.logId = logId;
		this.operType = operType;
		this.operDetail = operDetail;
		this.operResult = operResult;
		this.adminName = adminName;
		this.loginIp = loginIp;
		this.loginTime = loginTime;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((adminName == null) ? 0 : adminName.hashCode());
		result = prime * result + ((logId == null) ? 0 : logId.hashCode());
		result = prime * result + ((loginIp == null) ? 0 : loginIp.hashCode());
		result = prime * result
				+ ((loginTime == null) ? 0 : loginTime.hashCode());
		result = prime * result
				+ ((operDetail == null) ? 0 : operDetail.hashCode());
		result = prime * result
				+ ((operResult == null) ? 0 : operResult.hashCode());
		result = prime * result
				+ ((operType == null) ? 0 : operType.hashCode());
		return result;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		AdminLog other = (AdminLog) obj;
		if (adminName == null) {
			if (other.adminName != null)
				return false;
		} else if (!adminName.equals(other.adminName))
			return false;
		if (logId == null) {
			if (other.logId != null)
				return false;
		} else if (!logId.equals(other.logId))
			return false;
		if (loginIp == null) {
			if (other.loginIp != null)
				return false;
		} else if (!loginIp.equals(other.loginIp))
			return false;
		if (loginTime == null) {
			if (other.loginTime != null)
				return false;
		} else if (!loginTime.equals(other.loginTime))
			return false;
		if (operDetail == null) {
			if (other.operDetail != null)
				return false;
		} else if (!operDetail.equals(other.operDetail))
			return false;
		if (operResult == null) {
			if (other.operResult != null)
				return false;
		} else if (!operResult.equals(other.operResult))
			return false;
		if (operType == null) {
			if (other.operType != null)
				return false;
		} else if (!operType.equals(other.operType))
			return false;
		return true;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "AdminLog [logId=" + logId + ", operType=" + operType
				+ ", operDetail=" + operDetail + ", operResult=" + operResult
				+ ", adminName=" + adminName + ", loginIp=" + loginIp
				+ ", loginTime=" + loginTime + "]";
	}
	
	
	
	
	

}
