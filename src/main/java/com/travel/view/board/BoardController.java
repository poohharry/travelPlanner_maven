package com.travel.view.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.travel.biz.board.BoardService;

@Controller
@SessionAttributes("board")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	// 작성 페이지로 이동
	@RequestMapping(value = "/post.do", method = RequestMethod.GET)
	public String writeBoard(Model model, HttpSession session) {
		System.out.println("post.do 진입 성공");
		
		return "/jsp/post.jsp";
	}
	
	
	
}
