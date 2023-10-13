package com.quiz.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.store.bo.StoreBO;
import com.quiz.store.domain.Store;

@RequestMapping("/store")
@Controller
public class StoreController {

	@Autowired
	private StoreBO storeBO;
	
	//우리동네가게 화면
	//http://localhost:8080/store/store-view
	@GetMapping("/store-view")
	public String storeView(Model model) {
		List<Store> storeBO = storeBO.getStoreList();
				
		return "store/stores";
	}
	
	
}
