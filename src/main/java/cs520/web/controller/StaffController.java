package cs520.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StaffController {

	
	@RequestMapping(value="/staff/home.html")
	public String studentHome()
	{
		return "/staff/home";
	}
}
