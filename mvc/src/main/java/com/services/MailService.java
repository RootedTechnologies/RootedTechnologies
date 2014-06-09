package com.services;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

public class MailService {
	
	protected MailSender mailSender;
	
	public void setMailSender(MailSender mailSender){
		this.mailSender = mailSender;
	}
	
	public void sendMail(String from, String to, String subject, String msg)
	{
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom(from);
		message.setTo(to);
		message.setSubject(subject);
		message.setText(msg);
		mailSender.send(message);
	}
	
	public void sendInfoMail(String fromName, String fromEmail, String services, String subject, String message)
	{
		
//		final String username = "rootedtechnologies@gmail.com";
//		props.put("mail.smtp.user", username);
//		props.put("mail.smtp.host", "smtp.gmail.com");
//		props.put("mail.transport.protocol", "smtp");
//		props.put("mail.smtp.port", "587");
//		props.put("mail.smtp.auth", "true");
//		props.setProperty("mail.smtp.port",  "587");
//
//        props.put("mail.smtp.starttls.enable","true");
//        props.put("mail.smtp.timeout", "1000");
//        props.put("mail.smtp.connectiontimeout", "1000";
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() { protected PasswordAuthentication getPasswordAuthentication()
		{
			return new PasswordAuthentication(username, tst);
		}
		});
		
		try{
			MimeMessage email = new MimeMessage(session);
			email.setFrom(new InternetAddress(fromEmail));
			email.addRecipient(Message.RecipientType.TO, new InternetAddress("info@rootedtechnologies.com"));
			email.setSubject(subject);
			String body = "Name: " + fromName + "\n";
			body += "Email: " + fromEmail + "\n";
			body += "Services: " + services + "\n";
			body += "\n";
			body += message;
			email.setText(body);
			Transport.send(email);
			System.out.println("Sent message successfully...");

		}catch (Exception mex)
		{
			mex.printStackTrace();
		}
	}
}
