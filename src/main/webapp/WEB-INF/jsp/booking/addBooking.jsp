<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lesson06 quiz03 2.예약하기</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<!-- jquery 원본 -->
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

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
			//1. datepicker 추가
			$('input[name=date]').datepicker({
				dateFormat:"yy-mm-dd"
				, minDate:0 // 오늘날짜부터 선택가능
			});
			
			//2. 예약 추가
			$('#reservationBtn').on('click', function() {
				let name = $('input[name=name]').val().trim();
				let date = $('input[name=date]').val().trim();
				let day = $('input[name=day]').val().trim();
				let headcound = $('input[name=headcound]').val().trim();
				let phoneNumber = $('input[name=phoneNumber]').val().trim();
				
				if (!name) {
					alert("이름을 입력하세요");
					return;
				}
				
				if (!date) {
					alert("날짜를 선택해주세요");
					return;
				}
				
				if (!day) {
					alert("숙박일을 입력하세요");
					return;
				}
				
				if (isNaN(day)) { //숫자가 아니면 뜨는 함수(true)
					alert("숙박일수는 숫자만 입력 가능합니다");
					return;
				}
				
				if (!headcount) {
					alert("숙박인원을 입력해주세요");					
				}
				
				if (isNaN(head)) { //숫자가 아니면 뜨는 함수(true)
					alert("숙박인원은 숫자만 입력 가능합니다");
					return;
				}
				
				if (phoneNumber == "") {
					alert("전화번호를 입력하세요");
				}
				
				//ajax 통신
				$.ajax({
					//request
					type:"post"
					, url:"/booking/add-booking"
					, data:{"name":name, "date":date, "day":day, "headcount":headcount, "phoneNumber":phoneNumber}
				
					//response
					, success:function(data) {
						if (data.code == 200) {
							alert("예약되었습니다");
							location.href = "/booking/booking-list-view";
						} else {
							alert("예약에 실패했습니다"); //logic error
						}
					}
					, error:function(request, status, error) {
						alert("예약에 실패했습니다. 관리자에게 문의하세요");
					}
				});
			});
		});
	</script>
</body>
</html>