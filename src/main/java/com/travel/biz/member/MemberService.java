package com.travel.biz.member;

import java.util.List;

public interface MemberService {
	public void insertMember(MemberVO vo);
	public MemberVO getMember(MemberVO vo);
	public List<MemberVO> getMemberList(MemberVO vo);
	public void updateMember(MemberVO vo);
	public void deleteMember(MemberVO vo);
	public MemberVO login(MemberVO vo);
}
