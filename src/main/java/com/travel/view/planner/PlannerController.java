package com.travel.view.planner;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.travel.biz.item.ItemService;
import com.travel.biz.item.ItemVO;
import com.travel.biz.member.MemberVO;

@Controller
public class PlannerController {
	
	@Autowired
	private ItemService itemService;
	
	
	// 장바구니에 추가
	@RequestMapping(value = "/insertItem.do", produces="text/html;charset=UTF-8")
	@ResponseBody
	public String insertItem(ItemVO vo, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		vo.setMemberId(member.getId());
		itemService.insertItem(vo);
		System.out.println("장바구니 추가 완료");

		String returnMsg= "<script>alert('"+ vo.getName() +"을(를) 장바구니에 담았습니다'); location.href='/planner.do'</script>"; 

		return returnMsg;
	}
	
	// 장바구니 삭제
	@RequestMapping(value = "/deleteItem.do")
	public String deleteItem(Model model, ItemVO vo, HttpSession session) {
		itemService.deleteItem(vo);
		// 삭제가 무사히 완료됐으니 장바구니 호출
		return "/getItemList.do";
	}
	
	// 장바구니 전체 조회
	@RequestMapping(value = "/getItemList.do")
	public String getItemList(Model model, ItemVO vo, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		vo.setMemberId(member.getId());
		model.addAttribute("itemList", itemService.getItemList(vo));
		return "/jsp/cart.jsp";
	}
	
	@RequestMapping(value = "/planner.do",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String planner(HttpSession session) {
		String returnURL = "<script> location.href='/jsp/planner.jsp'</script>";
		MemberVO member = (MemberVO) session.getAttribute("member");
		if(member==null) {
			return "<script> alert('로그인 이후 사용할 수 있습니다'); location.href='/login.do'</script>";
		}
		return returnURL;
	}
	
	


}

