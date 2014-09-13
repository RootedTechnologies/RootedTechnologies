package com.services;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.microtripit.mandrillapp.lutung.*;
import com.microtripit.mandrillapp.lutung.model.MandrillApiError;
import com.microtripit.mandrillapp.lutung.view.MandrillMessage;
import com.microtripit.mandrillapp.lutung.view.MandrillMessage.Recipient;
import com.microtripit.mandrillapp.lutung.view.MandrillMessageStatus;

public class MailService {
	
	protected String mandrillApiKey;
	protected String infoEmailAddress;
	
	public void setMandrillApiKey(String mandrillApiKey)
	{
		this.mandrillApiKey = mandrillApiKey;
	}
	
	public void setInfoEmailAddress(String infoEmailAddress)
	{
		this.infoEmailAddress = infoEmailAddress;
	}
	
	public void sendMail(String fromName, String fromEmail, String services, String subject, String text) throws IOException, MandrillApiError
	{
		MandrillApi mandrillApi = new MandrillApi(mandrillApiKey);

		// create your message
		MandrillMessage message = new MandrillMessage();
		message.setSubject(subject);
		message.setHtml(text);
		message.setAutoText(true);
		message.setFromEmail(fromEmail);
		message.setFromName(fromName);
		// add recipients
		ArrayList<Recipient> recipients = new ArrayList<Recipient>();
		Recipient recipient = new Recipient();
		recipient.setEmail(infoEmailAddress);
		recipient.setName("Website Inquiry");
		recipients.add(recipient);
		message.setTo(recipients);
		message.setPreserveRecipients(true);
		ArrayList<String> tags = new ArrayList<String>();
		tags.add(services);
		message.setTags(tags);
		// ... add more message details if you want to!
		// then ... send
		MandrillMessageStatus[] messageStatusReports = mandrillApi.messages().send(message, false);
	}
}
