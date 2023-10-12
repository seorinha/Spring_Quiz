package com.quiz.lesson05.weather_history;

import org.springframework.stereotype.Repository;

@Repository
public interface WeatherHistoryMapper {

	public WeatherHistory getWeatherHistory();
}
