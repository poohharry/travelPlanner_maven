package com.travel.biz.item.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travel.biz.item.ItemVO;

@Repository
public class ItemDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public void insertItem(ItemVO vo) {
		System.out.println("DAO : 장바구니에 추가");
		mybatis.insert("ItemDAO.insertItem", vo);
	}
	
	public void deleteItem(ItemVO vo) {
		System.out.println("DAO : 장바구니 삭제");
		mybatis.delete("ItemDAO.deleteItem", vo);
	}
	
	public ItemVO getItem(ItemVO vo) {
		System.out.println("DAO : 장바구니에 등록된 아이템 1개 출력");
		return (ItemVO) mybatis.selectOne("ItemDAO.getItem", vo);
	}
	
	public List<ItemVO> getItemList(ItemVO vo) {
		System.out.println("DAO : 장바구니 리스트 출력");
		return mybatis.selectList("ItemDAO.getItemList", vo);
	}
}
