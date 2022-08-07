package com.travel.biz.item.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travel.biz.item.ItemService;
import com.travel.biz.item.ItemVO;

@Service("itemService")
public class ItemServiceImpl implements ItemService{

	@Autowired
	private ItemDAO itemDAO;
	
	@Override
	public void insertItem(ItemVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ItemVO getItem(ItemVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteItem(ItemVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ItemVO> getItemList(ItemVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
