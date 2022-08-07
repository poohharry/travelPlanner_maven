package com.travel.view;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.travel.biz.member.MemberVO;


@Controller
public class HomeController {
	
	@RequestMapping(value = "/home.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String home(HttpSession session, Model model, MemberVO vo) {
		
//		vo = (MemberVO)session.getAttribute("member");
		
		
		
		return "/jsp/index.jsp";
	}
	
}
