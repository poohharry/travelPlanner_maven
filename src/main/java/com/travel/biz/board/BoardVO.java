package com.travel.biz.board;

import lombok.Data;

@Data
public class BoardVO {
	private int seq;					// 게시물 고유번호
	private String title;				// 제목
	private String writer;				// 작성자
	private int viewCnt;				// 조회수
	private String content;				// 내용
	private String fileName;			// 업로드 파일 이름
	private int fileSize;				// 업로드 파일 크기
	private String writeDate;			// 작성 날짜
	private String updateDate;			// 수정 날짜
	private String originalFileName;	// 수정 시 기존 업로드 파일 이름
	private String table;				// 어느 테이블을 조회할 것인지
	
}
