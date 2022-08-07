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
		itemDAO.insertItem(vo);
		
	}

	@Override
	public ItemVO getItem(ItemVO vo) {
		return itemDAO.getItem(vo);
	}

	@Override
	public void deleteItem(ItemVO vo) {
		itemDAO.deleteItem(vo);
		
	}

	@Override
	public List<ItemVO> getItemList(ItemVO vo) {
		return itemDAO.getItemList(vo);
	}
	
}
