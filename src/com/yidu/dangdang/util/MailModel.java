package com.yidu.dangdang.util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

/**
 * 邮箱信息模板
 * @author youngboy
 * @since 2017/6/28
 */
public class MailModel {

	private static String mail;
	
	private static MailModel mailModel = new MailModel();
	
	private MailModel(){
		mail=readMailModel();
	}
	
	public static MailModel getMailModel(){
		return mailModel;
	}
	
	public String getModelText(){
		return mail;
	}
	
	public static String readMailModel(){
		BufferedReader br = null;  
        StringBuffer sb = null;  
        
        try {  
            br = new BufferedReader(new InputStreamReader(MailModel.class.getClassLoader().getResourceAsStream("model.txt"),"UTF-8")); //这里可以控制编码  
            sb = new StringBuffer();  
            String line = null;  
            while((line = br.readLine()) != null) {  
                sb.append(line);  
            }  
        } catch (Exception e) {  
            e.printStackTrace();  
        } finally {  
            try {  
                br.close();  
            } catch (Exception e) {  
                e.printStackTrace();  
            }     
        }  
        String html = new String(sb); 
		return html;
	}
	
	
}
