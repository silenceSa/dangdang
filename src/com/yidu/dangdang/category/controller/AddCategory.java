package com.yidu.dangdang.category.controller;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;
import com.yidu.dangdang.category.biz.CategoryBiz;
import com.yidu.dangdang.category.biz.impl.CategoryBizImpl;
import com.yidu.dangdang.category.domain.Category;
import com.yidu.dangdang.util.IDGenderatorUtil;
import com.yidu.dangdang.util.ParseExcel;

public class AddCategory {

	public static void main(String[] args) {
		//sendCode("13873933031");
		
		/*Gson gson = new Gson();
		String json="{\"alibaba_aliqin_fc_sms_num_send_response\":{\"result\":{\"err_code\":\"0\",\"model\":\"108208452140^1111139279432\",\"success\":true},\"request_id\":\"eibwalp0ia26\"}}";
		PhoneResult res = gson.fromJson(json, PhoneResult.class);
		System.out.println(res.getAlibaba_aliqin_fc_sms_num_send_response().getResult().getSuccess()=="true");*/
		System.out.println(sendEmail("592853", "2387870858@qq.com"));
		//System.out.println(createHtml("xx"));
		
		
	}
	
	public static String createHtml(String link){
		
		BufferedReader br = null;  
        StringBuffer sb = null;  
        try {  
            br = new BufferedReader(new InputStreamReader(new FileInputStream("model.txt"),"UTF-8")); //这里可以控制编码  
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
		return html.replace("activeLink", "www.vip.com");
	}
	
	public static boolean sendEmail(String activationCode, String mailTo) {
		boolean flag = false;
		// 邮件标题
		String subject = "来自腾云科技的激活邮件！";
		// 邮件内容
		String content = createHtml("xx");
		
		// 邮件发送人
		String from = "771979036@qq.com";
		// 主机名
		String host = "smtp.qq.com";
		// 邮箱账号
		final String userName = "771979036@qq.com";
		// 邮箱密码
		final String password = "zxonumcsjubzbcdb";
		// 为邮件内容占位符设置值
		content = MessageFormat.format(content, activationCode);
		
		String SSL_FACTORY="javax.net.ssl.SSLSocketFactory";
		

		// 创建配置文件对象
		Properties properties = new Properties();
		// 设置主机名
		properties.setProperty("mail.host", host);
		properties.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);  
		properties.setProperty("mail.smtp.socketFactory.fallback", "false") ;  
		properties.setProperty("mail.smtp.port","465") ;  
		properties.put("mail.smtp.starttls.enable","true");  
		properties.setProperty("mail.smtp.socketFactory.port","465") ;  
		properties.setProperty("mail.smtp.auth","true") ;
		
		// 服务器认证
		Authenticator authenticator = new Authenticator() {

			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(userName, password);
			}
		};
		// 得到Session对象
		Session session = Session.getInstance(properties, authenticator);
		// 创建MimeMessage对象
		MimeMessage mimeMessage = new MimeMessage(session);

		try {
			mimeMessage.setFrom(new InternetAddress(from));
			// 设置发件人
			mimeMessage.setRecipients(RecipientType.TO, mailTo);// 设置收件人
			mimeMessage.setSubject(subject);// 设置邮件标题
			mimeMessage.setContent(content, "text/html;charset=UTF-8");// 设置邮件内容以及格式

			// 发送邮件
			Transport.send(mimeMessage);
			flag=true;
			
		} catch (AddressException e) {
			System.out.println("地址错误");
			flag=false;
		} catch (MessagingException e) {
			System.out.println("信息错误");
			flag=false;
		}
		
		return flag;
	}
	
	private static void sendCode(String phone) {

		String url = "https://eco.taobao.com/router/rest";
		String appkey = "24394230";
		String secret = "632d617478f5be8d6e423076ccf648a7";
		
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setSmsType("normal");
		req.setSmsFreeSignName("腾云科技");
		req.setSmsParamString("{\"code\":\""+createRandCode()+"\"}");
		req.setRecNum(phone);
		req.setSmsTemplateCode("SMS_71245731");
		AlibabaAliqinFcSmsNumSendResponse rsp=null;
		try {
			rsp = client.execute(req);
		} catch (ApiException e) {
			e.printStackTrace();
		}
		System.out.println(rsp.getBody());
		
	}
	
	private static String createRandCode(){
		Random random = new Random();
		String code = "";
		for(int i=0;i<6;i++){
			code+=random.nextInt(10);
		}
		return code;
	}
	
	
	/**
	 * 用于储存父类键值对的集合
	 */
	private Map<String,String> parentKeys = new HashMap<String,String>();
	private CategoryBiz cbiz = new CategoryBizImpl();
	
	public void addData(){
		
		//获得数据
		List<List<String>> rows = ParseExcel.readXml("C:\\Users\\Administrator\\Desktop\\bootstrap\\父类数据.xls");
		//遍历集合添加数据
		for (List<String> list : rows) {
			//获得父类ID与Map里面键的作比较
			String parentName = list.get(1);
			if (parentKeys.containsKey(parentName)) {
				//包含此父类名的ID直接使用
				//调用添加方法
				addCategory(list);
				
			} else {
				//不包含ID，进入数据库查找
				String newParentId = cbiz.findCategoryIdByName(parentName);
                if (newParentId==null||newParentId.equals("")) {
					//没有找到对应的ID提示错误信息
                	System.out.println("error with "+parentName+" 此父类名不存在");
				} else {
					//找到对应的ID添加进集合
					parentKeys.put(parentName, newParentId);
					addCategory(list);
					
				}
				
				
			}
			
			
		}
		
		
		
	}
	
	
	
	public void addCategory(List<String> data){
		
		//封装数据
		Category category = new Category();
		//调用biz层的方法添加数据
		category.setCategoryId(IDGenderatorUtil.generateId());
		category.setCategoryName(data.get(0));
		category.setParentId(parentKeys.get(data.get(1)));
		category.setDescribe(data.get(2));
		//调用biz层的方法注册
		if(cbiz.addCategory(category)>0){
			//添加成功
			System.out.println("ok 1 row affected");
		}else{
			//添加失败
			System.out.println("error with "+data.get(1));
		}
		
		
	}
	
	
}
