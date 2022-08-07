package com.travel.view.planner;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PlannerController {
	
	@RequestMapping(value = "/addItem.do")
	public String addItem(Model model) {
		
		
		return "planner.do";
	}
	
	
}
