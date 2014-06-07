package com.rootedtechnologies;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.services.MailService;

@Controller
public class ContactUsController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired private MailService _ms;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public ModelAndView contactus() {
		
		return new ModelAndView("contactus");
	}
	
	@RequestMapping(value = "/contactus/message", method = RequestMethod.POST)
	public ModelAndView contactus(String message)
	{
		_ms.sendInfoMail("John Doe", "engineer@petrol.com", "Java Spring MVC", "Petroleum Company Website", "We need a new website for our dallas based petroleum company");
		return new ModelAndView("thankyou");
	}
}
