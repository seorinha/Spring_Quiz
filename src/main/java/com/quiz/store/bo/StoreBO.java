package com.quiz.store.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.quiz.store.domain.Store;
import com.quiz.store.mapper.StoreMapper;


public class StoreBO {

	@Autowired 
	private StoreMapper storeMapper;
	
	//input(controller로 부터 요청받음) : 요청 없음
	//output(controller에게 돌려줌) : controller가 필요로 하는것(List<Store>)을 돌려준다
	public List<Store> getStoreList() {
		return storeMapper.selectStoreList();
	}
}
