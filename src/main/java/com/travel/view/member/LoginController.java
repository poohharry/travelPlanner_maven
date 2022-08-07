package com.travel.view.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.travel.biz.member.MemberService;
import com.travel.biz.member.MemberVO;

@Controller
@SessionAttributes("member")
public class LoginController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public String loginView() {
		return "/jsp/login.jsp";
	}
	
	@RequestMapping(value="/login.do",method=RequestMethod.POST)
	public String login(@RequestParam String id,@RequestParam String pw, MemberVO vo, 
			HttpSession session, Model model) { //servlet api
		if(id==null || id.equals("")) {
			throw new IllegalArgumentException("아이디 필수");
		}
		vo.setId(id);
		vo.setPw(pw);
		MemberVO member = memberService.login(vo);

		if(member!=null) {
			session.setAttribute("member", member);
			return "/home.do";
		}else {
			throw new IllegalArgumentException("로그인 실패");
		}
	}
}
