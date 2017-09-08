package com.yidu.dangdang.chat.domain;

/**
 * 消息bean
 * @author youngboy
 *
 */
public class Message {
	
	/**
	 * 接收人
	 */
	private String toCus;
	
	
	/**
	 * 发送人
	 */
	private String fromCus;
	
	
	/**
	 * 消息内容
	 */
	private String content;
	
	
	/**
	 * 时间戳
	 */
	private long timestamp;
	
	
	/**
	 * 消息类型
	 */
	private String type;


	/**
	 * @return the toCus
	 */
	public String getToCus() {
		return toCus;
	}


	/**
	 * @param toCus the toCus to set
	 */
	public void setToCus(String toCus) {
		this.toCus = toCus;
	}


	/**
	 * @return the fromCus
	 */
	public String getFromCus() {
		return fromCus;
	}


	/**
	 * @param fromCus the fromCus to set
	 */
	public void setFromCus(String fromCus) {
		this.fromCus = fromCus;
	}


	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}


	/**
	 * @param content the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}


	/**
	 * @return the timestamp
	 */
	public long getTimestamp() {
		return timestamp;
	}


	/**
	 * @param timestamp the timestamp to set
	 */
	public void setTimestamp(long timestamp) {
		this.timestamp = timestamp;
	}


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
	
	
	
	

}
