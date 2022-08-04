package com.travel.biz.board;

import lombok.Data;

@Data
public class BoardVO {
	private int seq;				// 게시물 고유번호
	private String title;			// 제목
	private String writer;			// 작성자
	private int viewCnt;			// 조회수
	private String content;			// 내용
	private String fileName;		// 업로드 파일 이름
	
}
