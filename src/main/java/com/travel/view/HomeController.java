package com.travel.view;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.travel.biz.board.BoardService;
import com.travel.biz.board.BoardVO;
import com.travel.biz.member.MemberVO;


@Controller
public class HomeController {
	
	@Autowired
	private BoardService boardService;
	
	// 메인페이지로 이동
	@RequestMapping(value = "/home.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String home(HttpSession session, Model model, MemberVO vo) {
		
//		vo = (MemberVO)session.getAttribute("member");
		
		
		
		return "/jsp/index.jsp";
	}
	
	// 공지사항 페이지로 이동
	@RequestMapping(value = "/notice.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String notice(Model model, BoardVO vo) {
		vo.setTable("notice");
		model.addAttribute("boardList", boardService.getBoardList(vo));
		return "/jsp/notice.jsp";
	}
	
}
