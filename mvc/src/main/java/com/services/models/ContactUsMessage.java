package com.services.models;

public class ContactUsMessage {
	private String _name;
	private String _email;
	private String _services;
	private String _subject;
	private String _message;
	
	public ContactUsMessage()
	{
		
	}
	
	public ContactUsMessage(String name, String email, String services, String subject, String message)
	{
		_name = name;
		_email = email;
		_services = services;
		_subject = subject;
		_message = message;
	}
	
	public String getName()
	{
		return this._name;
	}
	
	public void setName(String value)
	{
		_name = value; 
	}
	
	public String getEmail()
	{
		return this._email;
	}
	
	public void setEmail(String value)
	{
		_email = value;
	}
	
	public String getServices()
	{
		return this._services;
	}
	
	public void setServices(String value)
	{
		_services = value;
	}
	
	public String getSubject()
	{
		return this._subject;
	}
	
	public void setSubject(String value)
	{
		_subject = value;
	}
	
	public String getMessage()
	{
		return this._message;
	}
	
	public void setMessage(String value)
	{
		_message = value;
	}
}
