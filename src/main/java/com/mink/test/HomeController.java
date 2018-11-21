package com.mink.test;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value="/")
public class HomeController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "main";
	}
	
	@RequestMapping(value = "/reference", method = RequestMethod.POST)
	public String reference(@RequestParam(name="type") String type) {
		String page = "/reference/";
		
		switch(Integer.parseInt(type)) {
		case 0:
			page += "jqxinput";
			break;
		case 1:
			page += "jqxpasswordinput";
			break;
		case 2:
			page += "jqxdatetimeinput";
			break;
		case 3:
			page += "jqxmaskedinput";
			break;
		case 4:
			page += "jqxformattedinput";
			break;
		case 5:
			page += "jqxcomplexinput";
			break;
			
		}
		
		return page;
	}
	
	
	@RequestMapping(value = "/old", method = RequestMethod.GET)
	public String old(Locale locale, Model model) {
		return "sample_form_old";
	}
	
	@RequestMapping(value = "/tab", method = RequestMethod.GET)
	public String tab() {
		return "tab/tab";
	}
	
	@RequestMapping(value = "/dockingLayout", method = RequestMethod.GET)
	public String dockingLayout() {
		return "dockingLayout/dockingLayout";
	}
	
	@RequestMapping(value = "/navigationBar", method = RequestMethod.GET)
	public String navigationBar() {
		return "navigationBar";
	}
}
