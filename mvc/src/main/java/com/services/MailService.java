package com.services;

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
		SimpleMailMessage email = new SimpleMailMessage();
		email.setFrom("rootedtechnologies@gmail.com");
		email.setTo("rootedtechnologies+info@gmail.com");
		email.setSubject(subject);
		String body = "Name: " + fromName + "\n";
		body += "Email: " + fromEmail + "\n";
		body += "Services: " + services + "\n";
		body += "\n";
		body += message;
		email.setText(body);
		mailSender.send(email);
	}
}
