<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기상청 과거 날씨</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/css/weather_history/style.css">
</head>
<body>
	<div id="wrap">
		<div class="contents d-flex">
			<%--메뉴 부분 --%>
			<nav class="col-2">
				<%--상단 로고 --%>
				<div class="logo d-flex justify-content-center mt-3">
					<img src="" width="25">
					<span class="text-white font-weight-bold ml-2">기상청</span>
				</div>
				
				<%--메뉴리스트(flex-column: 세로메뉴 만들기) --%>
				<ul class="nav flex-column mt-4">
					<li class="nav-item"><a href="/weather/add-weather-view" class="nav-link menu-font">날씨</a></li>
					<li class="nav-item"><a href="/weather/add-weather-view" class="nav-link menu-font">날씨입력</a></li>
					<li class="nav-item"><a href="/weather/add-weather-view" class="nav-link menu-font">테마날씨</a></li>
					<li class="nav-item"><a href="/weather/add-weather-view" class="nav-link menu-font">관측 기후</a></li>
				</ul>
			</nav>
			
			<%--날씨 히스토리 --%>
			<section>
			
			</section>
		</div>
		
		
		<footer class="d-flex align-items-center">
			<div class="footer-logo ml-4">
				<img class="foot-logo-image" src="" width="120">
			</div>
			<div class="copyright ml-4">
				<small>
					(07062) 서울시 동작구 여의대방로16길 61<br>
					Copyright@2023 KMA. All Rights RESERVED.
				</small>
			</div>
		</footer>
	</div>
</body>
</html>