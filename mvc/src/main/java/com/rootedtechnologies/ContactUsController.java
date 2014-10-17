package com.rootedtechnologies;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.microtripit.mandrillapp.lutung.model.MandrillApiError;
import com.services.*;

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
	public ModelAndView contactus(@ModelAttribute ("template-contactform-name") String name, 
			@ModelAttribute ("template-contactform-email") String email,
			@ModelAttribute ("template-contactform-service") String service, 
			@ModelAttribute ("template-contactform-subject") String subject, 
			@ModelAttribute ("template-contactform-message") String message) 
	{
		try {
			_ms.sendMail(name, email, service, subject, message);
			return new ModelAndView("thankyou");
		}
		catch(Exception error)
		{
			return new ModelAndView("shared/error");
		}
	}
}
