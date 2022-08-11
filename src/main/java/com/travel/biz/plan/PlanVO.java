package com.travel.biz.plan;

import lombok.Data;

@Data
public class PlanVO {
	private int seq;					// 고유번호
	private String memberId;			// 작성자 id
	private String start;				// 시작 날짜
	private String end;					// 끝 날짜
	private String day1;				// 1일차 일정
	private String day2;				// 2일차 일정
	private String day3;				// 3일차 일정
	private String day4;				// 4일차 일정
	private String day5;				// 5일차 일정
	private String day6;				// 6일차 일정
	private String day7;				// 7일차 일정
}
