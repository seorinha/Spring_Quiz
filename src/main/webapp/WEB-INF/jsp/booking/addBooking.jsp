<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lesson06 quiz03 2.예약하기</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<%-- datepicker를 위해 slim 버전이 아닌 jquery를 import한다. --%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
	
<%-- datepicker --%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- 내가 만든 stylesheet -->
<link rel="stylesheet" type="text/css" href="/css/booking/style.css">
</head>
<body>
	<div id="wrap" class="container">
		<header class="d-flex justify-content-center align-items-center">
			<div class="display-4">통나무 팬션</div>>
		</header>
		
		<nav>
			<ul class="nav nav-fill">
				<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">펜션소개</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">객실보기</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">예약하기</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">예약목록</a></li>
			</ul>
		</nav>
		
		<section class="contents">
			<h2 class="text-center font-weight-bold m-4">예약하기</h2>
			<div class="d-flex justify-content-center">
				<div class="reservation-box">
					<div class="subject-text my-2 font-weight-bold">이름</div>
					<input type="text" class="form-control" name="name">
					
					<div class="subject-text my-2 font-weight-bold">예약날짜</div>
					<input type="text" class="form-control" id="date" name="date">
					
					<div class="subject-text my-2 font-weight-bold">숙박일수</div>
					<input type="text" class="form-control" name="day">
					
					<div class="subject-text my-2 font-weight-bold">숙박인원</div>
					<input type="text" class="form-control" name="headcount">
					
					<div class="subject-text my-2 font-weight-bold">전화번호</div>
					<input type="text" class="form-control" name="phoneNumber">
					
					<button type="button" id="reservationBtn" class="btn btn-warning">예약하기</button>
				</div>
			
			</div>
		</section>
		
		<footer>
			<small class="text-secondary">
				제주특별자치도 제주시 애월읍<br>
				사업자등록번호:111-22-255222/농어촌민박사업자지정/대표:김동욱<br>
				Copyright 2025 © tongnamu.All right reserved.
			</small>
		</footer>
	</div>
	<script>
		// ready 함수: DOM tree가 모두 구성된 후 불려지는 함수
		$(document).ready(function() {
			$('#date').datepicker({
				changeMonth :  true,
				chanageYear : true,
				dateFormat : "yy-MM-dd",
			});
		});
	</script>
</body>
</html>