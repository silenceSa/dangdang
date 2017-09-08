package com.yidu.dangdang.chat.server;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import com.yidu.dangdang.chat.domain.ChatCustomer;
import com.yidu.dangdang.chat.service.MessageSend;
import com.yidu.dangdang.chat.util.ChatUtil;

/**
 * 聊天服务器
 * @author youngboy
 *
 */
@ServerEndpoint("/chat/{uid}")
public class ChatServer {

	@OnOpen
    public void open(Session session, @PathParam("uid") String uid){

		//生成用户对象
		ChatCustomer cus = new ChatCustomer();
		//设置用户参数
		cus.setSession(session);
		cus.setUserId(uid);
		if ("custom".equals(uid)) {
            ChatUtil.getPool().addCustom(cus);
		} else {
			//加入用户池
			ChatUtil.getPool().addUser(cus);
		}
		
	
	}

    @OnMessage
    public void receiveMessage(String message,Session session){
    	MessageSend send = new MessageSend();
    	send.sendMessage(message, session);
    }

    @OnError
    public void error(Throwable t) {
        print(t.getMessage());
    }

    @OnClose
    public void close(Session session){
       //断开连接
       ChatUtil.getPool().removeUser2(session);
    }

    private void print(String msg){
        System.out.println(msg);
    }
	
	
	
	
	
	
}
