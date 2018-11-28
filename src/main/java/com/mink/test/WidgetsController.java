package com.mink.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/widgets")
public class WidgetsController {
	@RequestMapping(value = "/jqxinput", method = RequestMethod.POST)
	public String jqxinput() {
		return "/reference/jqxinput";
	}
	
	@RequestMapping(value = "/jqxinput_default", method = RequestMethod.POST)
	public String jqxinput_default() {
		return "/widgets/jqxinput/jqxinput_default";
	}
	
	@RequestMapping(value = "/jqxinput_label", method = RequestMethod.POST)
	public String jqxinput_label() {
		return "/widgets/jqxinput/jqxinput_label";
	}
	
	@RequestMapping(value = "/jqxinput_getter_setter", method = RequestMethod.POST)
	public String jqxinput_getter_setter() {
		return "/widgets/jqxinput/jqxinput_getter_setter";
	}

	
	
	@RequestMapping(value = "/jqxgrid_test", method = RequestMethod.POST)
	public String jqxgrid_test() {
		return "/widgets/jqxgrid/jqxgrid_test";
	}
}
