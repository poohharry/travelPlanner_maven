package com.travel.biz.member.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travel.biz.member.MemberVO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public void insertMember(MemberVO vo) {
		System.out.println("mybatis 회원가입");
		mybatis.insert("MemberDAO.insertMember", vo);
	}
	
	public void updateMember(MemberVO vo) {
		System.out.println("mybatis 회원정보 수정");
		mybatis.update("MemberDAO.updateMember", vo);
	}
	
	public void deleteMember(MemberVO vo) {
		System.out.println("mybatis 회원탈퇴");
		mybatis.delete("MemberDAO.deleteMember", vo);
	}
	
	public MemberVO getMember(MemberVO vo) {
		System.out.println("mybatis 회원정보 가져오기");
		return (MemberVO) mybatis.selectOne("MemberDAO.getMember", vo);
	}
	
	public List<MemberVO> getMemberList(MemberVO vo) {
		System.out.println("mybatis 회원리스트 가져오기");
		return mybatis.selectList("MemberDAO.getMemberList", vo);
	}
	
	public MemberVO login(MemberVO vo) {
		System.out.println("mybatis 로그인");
		return (MemberVO) mybatis.selectOne("MemberDAO.login", vo);
	}
	
	
}
