<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨 정보</title>
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
			
			<%--날씨 추가 --%>
			<section class="col-10 mt-3 ml-5">
				<h3>날씨 입력</h3>
				<form method="post" action="lesson05/weather_history">
					<div class="d-flex justify-content-between mt-5">
						<%--날짜 --%>
						<div class="d-flex align-items-center">
							<div class="input-label">날짜</div>
							<input type="text" class="form-control" id="date" name="date">
						</div>
						<%--날씨 --%>
						<div class="d-flex align-items-center">
							<div class="input-label">날씨</div>
							<select class="form-control" name="weather">
								<option>맑음</option>
								<option>구름조금</option>
								<option>흐림</option>
								<option>비</option>
							</select>
						</div>
						<%--미세먼지 --%>
						<div class="d-flex align-items-center">
							<div class="input-label">미세먼지</div>
							<select class="form-control" name="weather">
								<option>좋음</option>
								<option>보통</option>
								<option>나쁨</option>
								<option>최악</option>
							</select>
						</div>
					</div>
					
					<div class="d-flex justify-content-between mt-5">
						<%--기온 --%>
						<div class="d-flex align-items-center">
							<div class="input-label">기온</div>
							<div class="input-group">
								<input type="text" class="form-control" name="temperature">
								<div class="input-group-append">
									<span class="input-group-text">℃</span>
								</div>
							</div>
						</div>
						<%--강수량 --%>
						<div class="d-flex align-items-center">
							<div class="input-label">강수량</div>
							<div class="input-group">
								<input type="text" class="form-control" name="precipitation">
								<div class="input-group-append">
									<span class="input-group-text">mm</span>
								</div>
							</div>
						</div>
						<%--풍속 --%>
						<div class="d-flex align-items-center">
							<div class="input-label">풍속</div>
							<div class="input-group">
								<input type="text" class="form-control" name="windSpeed">
								<div class="input-group-append">
									<span class="input-group-text">km/h</span>
								</div>
							</div>
						</div>
					</div>
					
					
					<div class="text-right mt-4 mb-5">
						<input type="submit" class="btn btn-success" value="저장">
					</div>
				</form>
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