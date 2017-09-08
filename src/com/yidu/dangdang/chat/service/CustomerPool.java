package com.yidu.dangdang.chat.service;

import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import javax.websocket.Session;

import com.yidu.dangdang.chat.domain.ChatCustomer;

/**
 * 用户连接池
 * @author youngboy
 *
 */
public class CustomerPool {

	private static Map<String,ChatCustomer> socketUserMap;
	
	private static Map<String,ChatCustomer> customMap;


    private CustomerPool(){
        socketUserMap = new ConcurrentHashMap<String,ChatCustomer>();
        customMap = new ConcurrentHashMap<String,ChatCustomer>();
    }

    private static CustomerPool manager = new CustomerPool();

    public static CustomerPool getPool(){
    	return manager;
    };
    

    public boolean addUser(ChatCustomer user) {

        String sessionUserId = user.getUserId();
        removeUser(sessionUserId);
        socketUserMap.put(sessionUserId, user);
        return true;
    }

    public boolean addCustom(ChatCustomer cus) {
    	
    	String sessionUserId = cus.getUserId();
    	removeCustom(sessionUserId);
    	customMap.put(sessionUserId, cus);
    	return true;
    }

    


	public boolean removeUser(ChatCustomer user) {
        String sessionUserId = user.getUserId();
        return removeUser(sessionUserId);
    }


    public int getOnlineCount() {
        return socketUserMap.size();
    }
    
    public int getOnlineCustom() {
    	return customMap.size();
    }

    public ChatCustomer getUser(String userId){
        String key = userId;
        if(socketUserMap.containsKey(key)){
            return socketUserMap.get(key);
        }
        return new ChatCustomer();
    }

    public ChatCustomer getCustom(){
    	if(customMap.isEmpty()){
    		return new ChatCustomer();
    	}else{
    		return customMap.get(customMap.keySet().toArray()[0]);
    	}
    }
    
    private boolean removeUser(String sessionUserId) {
        socketUserMap.remove(sessionUserId);
        return true;
    }
	
    private boolean removeCustom(String sessionUserId) {
    	customMap.remove(sessionUserId);
    	return true;
    }
    
	public boolean removeUser2(Session session) {
    	
    	Set<String> setCustomer = socketUserMap.keySet();
    	for (String item : setCustomer) {
    		if(socketUserMap.get(item).getSession().equals(session)){
                socketUserMap.remove(item);
    		}
		}
    	
    	Set<String> setCustom = customMap.keySet();
    	for (String item : setCustom) {
    		if(customMap.get(item).getSession().equals(session)){
    			customMap.remove(item);
    		}
		}
    	
    	return true;
    }
	
	
   
	
}
