package com.travel.view.member;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.travel.biz.member.MemberService;
import com.travel.biz.member.MemberVO;
import com.travel.view.FileController;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	// 회원가입
	@RequestMapping(value = "/insertMember.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String insertMember(MemberVO vo, @RequestParam MultipartFile uploadFile) 
			throws IOException {
		
		final String SAVEFOLDER = "";
		
		// 파일 업로드 처리
		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			// 파일 이름 중복 처리 (UUID 활용)
			String extension = fileName.substring(fileName.lastIndexOf("."), fileName.length());

			UUID uuid = UUID.randomUUID();
			String newFileName = uuid.toString() + extension;
			
			// DB에 넣을 파일 정보를 VO에 담는 과정
			vo.setOriginalImgName(fileName);
			vo.setProImgName(SAVEFOLDER + newFileName);
			vo.setProImgSize((int)(uploadFile.getSize()));
			
			// 폴더 생성
			// 나중에는 많은 파일들이 한곳에 모일 것이며, 그것을 관리하기 쉽도록
			// 날짜별로 새로운 폴더를 만들어서 거기에 파일을 따로따로 저장해두면 좋을 것 같음
			File file = new File(SAVEFOLDER);
			if(!file.exists()) file.mkdirs();
			
			uploadFile.transferTo(new File(SAVEFOLDER + newFileName));
		}
		
		memberService.insertMember(vo);
		
		return "/login.do";
	}
	

	// 회원탈퇴
	@RequestMapping("/deleteMember.do")
	public String deleteMember(MemberVO vo) {
		memberService.deleteMember(vo);
		return "/home.do";
	}
	
	
	// 회원정보 조회
	public String getMember(MemberVO vo, Model model, HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("member");
		vo.setId(member.getId());
		model.addAttribute("memberInfo", memberService.getMember(vo));
		return "/jsp/mypage.jsp";
	}
	
	
	// 회원정보 수정
	@RequestMapping("/updateMember.do")
	public String updateMember(MemberVO vo, @RequestParam MultipartFile uploadFile,
			@RequestParam("file") String beforefile) throws IOException {
		final String SAVEFOLDER = "";
		
		// 파일 업로드 처리
		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			// 파일 이름 중복 처리 (UUID 활용)
			String extension = fileName.substring(fileName.lastIndexOf("."), fileName.length());

			UUID uuid = UUID.randomUUID();
			String newFileName = uuid.toString() + extension;
			
			// DB에 넣을 파일 정보를 VO에 담는 과정
			vo.setOriginalImgName(fileName);
			vo.setProImgName(SAVEFOLDER + newFileName);
			vo.setProImgSize((int)(uploadFile.getSize()));
			
			// 폴더 생성
			// 나중에는 많은 파일들이 한곳에 모일 것이며, 그것을 관리하기 쉽도록
			// 날짜별로 새로운 폴더를 만들어서 거기에 파일을 따로따로 저장해두면 좋을 것 같음
			File file = new File(SAVEFOLDER);
			if(!file.exists()) file.mkdirs();
			
			uploadFile.transferTo(new File(SAVEFOLDER + newFileName));
		}
		
		// 기존에 업로드 됐었던 파일 삭제
		// 새로운 파일이 업로드 되던, 파일 없이 수정을 하던 결국 이전에 있던 파일은 삭제되는게 맞음
		FileController filecon = new FileController();
		filecon.removeFile(beforefile);
		
		return "/jsp/mypage.jsp";
	}
	
	
	// 관리자용 회원 리스트 조회
	@RequestMapping("/getMemberList.do")
	public String getMemberList(MemberVO vo, Model model) {
		model.addAttribute("memberList", memberService.getMemberList(vo));
		return "/jsp/memberList.jsp";
	}
	
}
