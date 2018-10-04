package com.mink.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/tab")
public class TabController {
	@RequestMapping(value="/content", method = RequestMethod.GET)
	public String acc02010() {
		return "tab/content";
	}
}
