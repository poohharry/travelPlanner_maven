package com.travel.biz.item;

import java.util.List;

public interface ItemService {
	void insertItem(ItemVO vo);
	ItemVO getItem(ItemVO vo);
	void deleteItem(ItemVO vo);
	List<ItemVO> getItemList(ItemVO vo);
}
