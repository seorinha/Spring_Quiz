package com.quiz.lesson05.weather_history;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/weather")
@Controller
public class WeatherHistoryController {
	
	
	//날씨 목록 화면
	@GetMapping("/history-view")
	public String historyView(Model model) {
		return "weather_history/history";
	}
	
	//날씨 추가 화면
	@GetMapping("/add-weather-view")
	public String addWeatherView() {
		return "weather_history/addWeather";
	}
	
	
}
