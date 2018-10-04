package com.mink.test;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "main";
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
