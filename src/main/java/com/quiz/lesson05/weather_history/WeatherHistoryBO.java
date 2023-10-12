package com.quiz.lesson05.weather_history;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WeatherHistoryBO {

	@Autowired
	private WeatherHistoryMapper weatherHistoryMapper;
	
	public WeatherHistory getWeatherHistory() {
		return weatherHistoryMapper.selectWeatherHistory();
	}
	
	
	
	
}
