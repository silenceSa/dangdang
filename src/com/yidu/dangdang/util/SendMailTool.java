package com.yidu.dangdang.util;

import java.text.MessageFormat;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

public class SendMailTool {

	public static boolean sendEmail(String activeLink, String mailTo) {
		boolean flag = false;
		// 邮件标题
		String subject = "来自腾云科技的激活邮件！";
		// 邮件内容
		String content = createHtml(activeLink);
		
		// 邮件发送人
		String from = "771979036@qq.com";
		// 主机名
		String host = "smtp.qq.com";
		// 邮箱账号
		final String userName = "771979036@qq.com";
		// 邮箱密码
		final String password = "zxonumcsjubzbcdb";
		// 为邮件内容占位符设置值
		content = MessageFormat.format(content, activeLink);
		
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

	private static String createHtml(String activeLink) {
		//加载邮件模板发送邮件
		String mailText = MailModel.getMailModel().getModelText();
	    //生成邮件
	    String sendMail = mailText.replace("activeLink", activeLink);
		return sendMail;
	}
	
   
	
	
	
}
