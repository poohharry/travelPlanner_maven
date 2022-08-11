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
import com.travel.biz.plan.PlanService;
import com.travel.biz.plan.PlanVO;

@Controller
public class PlannerController {
	
	@Autowired
	private ItemService itemService;
	@Autowired
	private PlanService planService;
	
	// 장바구니에 추가
	@RequestMapping(value = "/insertItem.do", produces="text/html;charset=UTF-8")
	@ResponseBody
	public String insertItem(ItemVO vo, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		if(member==null) {
			return "<script> alert('로그인 이후 사용할 수 있습니다'); location.href='/login.do'</script>";
		}
		vo.setMemberId(member.getId());
		itemService.insertItem(vo);
		System.out.println("장바구니 추가 완료");

		String returnMsg= "<script>alert('"+ vo.getName() +"을(를) 장바구니에 담았습니다.\\nplanner 페이지에서 확인해주세요.'); location.href='/map.do'</script>"; 

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
		if(member==null) {
			return "<script> alert('로그인 이후 사용할 수 있습니다'); location.href='/login.do'</script>";
		}
		vo.setMemberId(member.getId());
		model.addAttribute("itemList", itemService.getItemList(vo));
		return "/jsp/planner.jsp";
	}
	
	// 지도 페이지로 이동(로그인 상태 체크)
	@RequestMapping(value = "/map.do",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String planner(HttpSession session) {
		String returnURL = "<script> location.href='/jsp/map.jsp'</script>";
		MemberVO member = (MemberVO) session.getAttribute("member");
		if(member==null) {
			return "<script> alert('로그인 이후 사용할 수 있습니다'); location.href='/login.do'</script>";
		}
		return returnURL;
	}
	
	@RequestMapping(value = "/savePlan.do",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String savePlan(PlanVO vo) {
		System.out.println("day1 : " + vo.getDay1());
		System.out.println("day2 : " + vo.getDay2());
		System.out.println("day3 : " + vo.getDay3());
		
		
		planService.insertPlan(vo);
		
		return "<script> alert('여행 플랜을 저장했습니다'); location.href='/home.do'</script>";
	}
	
	@RequestMapping(value = "/getPlanList.do")
	public String getPlanList(PlanVO vo, Model model, HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("member");
		vo.setMemberId(member.getId());
		
		model.addAttribute("planList", planService.getPlanList(vo));
		return "/jsp/myPlans.jsp";
	}
	
	@RequestMapping(value = "/getPlan.do")
	public String getPlan(PlanVO vo, Model model) {
		System.out.println(vo.getSeq());
		PlanVO plan = planService.getPlan(vo);
		
		System.out.println("day1 : " + plan.getDay1());
		model.addAttribute("plan", plan);
		return "/jsp/plan_detail.jsp";
	}
	


}

