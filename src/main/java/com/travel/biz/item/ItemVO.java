package com.travel.biz.item;

import lombok.Data;

@Data
public class ItemVO {
	private int seq;				// 장바구니 고유 번호
	private String memberId;		// 누가 넣은 것인지
	private String name;			// 장소 이름
	private String address;			// 장소 주소
	private String tel;				// 장소 전화번호
}
