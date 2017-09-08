package com.yidu.dangdang.chat.service;

import java.util.Date;

import javax.websocket.Session;

import com.google.gson.Gson;
import com.yidu.dangdang.chat.domain.ChatCustomer;
import com.yidu.dangdang.chat.domain.ToClientMessageResult;
import com.yidu.dangdang.chat.domain.ToClientTextMessage;
import com.yidu.dangdang.chat.domain.ToServer;
import com.yidu.dangdang.chat.domain.ToServerMessageMine;
import com.yidu.dangdang.chat.domain.ToServerTextMessage;
import com.yidu.dangdang.chat.util.ChatUtil;


/**
 * 发送信息的类
 * @author youngboy
 *
 */
public class MessageSend {
	
	private Gson gson = new Gson();
	
	public void sendMessage(String message,Session session){
		
		//解析发过来的JSON字符串
		ToServer toServer = gson.fromJson(message, ToServer.class);
		ToServerTextMessage toServerMsg = toServer.getData();
		//获取要发送人的ID
		String id = toServerMsg.getTo().getId();
		//获取发送的类型
		String type = toServer.getType();
		//生成发往客户端的信息
		String toMsg = null;
		System.out.println("type:"+type); 
		if(type.equals("yk")){
			toMsg = getToClientMessage(toServerMsg,"kf");
			sendMessageToCustomer(id, toMsg, session);
		}else if(type.equals("kf")){
			toMsg = getToClientMessage(toServerMsg,"yk");
			sendMessageToCustom(id,toMsg,session);
		}
		
		
		
		
		
		
	}
	
	
	/**
	 * 发消息给客户
	 * @param customerId
	 * @param message
	 */
	public void sendMessageToCustomer(String customerId,String message,Session session){
		//获得要发送用户会话对象
		ChatCustomer cus = ChatUtil.getPool().getUser(customerId);
		//判断是否为空
		if(cus.getUserId()!=null){
			//获得session
			if (cus.getSession()==null) {
				System.out.println("用户不在线");
				systemTips(session,"用户不在线");
			} else {
                Session ses = cus.getSession();
                ses.getAsyncRemote().sendText(message);
			}
			
		}else{
			//用户下线
			System.out.println("用户不在线");
			systemTips(session,"用户不在线");
		}
		
		
		
	}
	
	
	/**
	 * 发消息给客服
	 * @param customId
	 * @param message
	 */
	public void sendMessageToCustom(String customId,String message,Session session){
		//判断客服是否在线
		int num = ChatUtil.getPool().getOnlineCustom();
		System.out.println("kefu:"+num);
		if(num>0){
			//客服在线   默认选择第一个客服
			Session ses = ChatUtil.getPool().getCustom().getSession();
			ses.getAsyncRemote().sendText(message);
		}else{
			//客服不在线
			System.out.println("客服下线");
			systemTips(session,"客服美眉正在补妆，请稍后！");
		}
		
		
	}
	
	
	private String getToClientMessage(ToServerTextMessage message,String type) {

        ToClientTextMessage toClientTextMessage = new ToClientTextMessage();

        ToServerMessageMine mine = message.getMine();

        toClientTextMessage.setUsername(mine.getUsername());
        toClientTextMessage.setAvatar(mine.getAvatar());
        toClientTextMessage.setContent(mine.getContent());
        toClientTextMessage.setType(message.getTo().getType());

        
        toClientTextMessage.setId(mine.getId());
        toClientTextMessage.setTimestamp(new Date().getTime());

        //返回统一消息接口
        ToClientMessageResult result = new ToClientMessageResult();
        result.setMsg(toClientTextMessage);
        result.setType(type);

        return gson.toJson(result);
    }
	
	
	
	public void systemTips(Session session,String msg){
		session.getAsyncRemote().sendText("{\"type\":\"system\",\"content\":\""+msg+"\"}");
	}
	
	
	

}
