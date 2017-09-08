package com.yidu.dangdang.chat.domain;

/**
 * Created by pz on 16/11/24.
 */
public class ToClientMessageResult {

    
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

	public Object getMsg() {
        return msg;
    }

    public void setMsg(Object msg) {
        this.msg = msg;
    }

    private String type;
    private Object msg;
}
