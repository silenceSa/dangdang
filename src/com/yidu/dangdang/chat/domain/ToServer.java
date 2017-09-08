package com.yidu.dangdang.chat.domain;

public class ToServer {
	

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return the data
	 */
	public ToServerTextMessage getData() {
		return data;
	}

	/**
	 * @param data the data to set
	 */
	public void setData(ToServerTextMessage data) {
		this.data = data;
	}
	
	private String type;
	
	private ToServerTextMessage data;
	
}
