package com.travel.biz.member;

import lombok.Data;

@Data
public class MemberVO {
	private int seq;
	private String id;
	private String pw;
	private String name;
	private String email;
	private String mobile;
	private String originalImgName;
	private String proImgName;
	private Integer proImgSize;		// Integer로 지정한 이유는 null이 들어올 수도 있기때문
	private String signUpDate;
}
