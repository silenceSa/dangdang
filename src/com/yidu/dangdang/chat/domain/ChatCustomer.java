package com.yidu.dangdang.chat.domain;

import javax.websocket.Session;

/**
 * 实体类
 * @author youngboy
 *
 */
public class ChatCustomer {

	private Session session;
	
	private String userId;

	public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        this.session = session;
    }

    public String getUserId() {
        return userId;
    }

    public boolean isExist(){
        return this.userId == null;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }


    @Override
    public String toString() {
        return session.getId()+"_"+userId;
    }
	
	
}
