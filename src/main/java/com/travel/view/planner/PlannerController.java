package com.travel.view.planner;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.travel.biz.item.ItemService;
import com.travel.biz.item.ItemVO;
import com.travel.biz.member.MemberVO;

@Controller
public class PlannerController {
	
	@Autowired
	private ItemService itemService;
	
	
	// 장바구니에 추가
	@RequestMapping(value = "/insertItem.do")
	public String insertItem(ItemVO vo) {
		itemService.insertItem(vo);
		System.out.println("장바구니 추가 완료");
		return "/jsp/planner.jsp";
	}
	
	// 장바구니 삭제
	@RequestMapping(value = "/deleteItem.do")
	public String deleteItem(Model model, ItemVO vo, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		vo.setMemberId(member.getId());
		
		// 선 삭제 (삭제하는 url에 쿼리로 seq를 던져 줄 예정이고 그 seq를 통해서 해당 아이템을 삭제)
		itemService.deleteItem(vo);
		// 후 조회 (세션에서 받아온 유저의 정보중 id를 통해 장바구니 조회)
		model.addAttribute("itemList", itemService.getItemList(vo));
		return "cart.do";
	}
	
	// 장바구니 전체 조회
	@RequestMapping(value = "/getItemList.do")
	public String getItemList(Model model, ItemVO vo, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		vo.setMemberId(member.getId());
		model.addAttribute("itemList", itemService.getItemList(vo));
		return "cart.do";
	}
	
	@RequestMapping(value = "/search.do")
	public void search(String keyWord) {
		System.out.println(keyWord);
	}

}

