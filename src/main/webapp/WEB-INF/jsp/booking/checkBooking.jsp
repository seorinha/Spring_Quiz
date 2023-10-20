<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lesson06 quiz03 3.예약 조회기능</title>
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
		
		<!--배너 -->
		<section class="banner bg-info">
			<img id="bannerImage" src="/img/test06_banner1.jpg" alt="banner" width="1110" height="500">
		</section>
		
		<section class="reserve d-flex">
			<!--실시간 예약하기  -->
			<section class="real-time-reserved col-4">
				<div class="display-4 text-white justify-content-center align-items-center">실시간<br>예약하기</div>
			</section>
			<!-- 예약확인하기 -->
			<section class="confirm col-4">
				<div class="display-5 text-white ml-4">예약 확인</div>
				<div id="memberInputBox" class="m-2">
					<div class="d-flex justify-content-end mr-3">
						<span class="text-white">이름:</span>
						<input type="text" id="name" class="form-control input-form">
					</div>
					<div class="d-flex mt-2 justify-content-end mr-3">
						<span class="text-white">전화번호:</span>
						<input type="text" id="phoneNumber" class="form-control input-form">
					</div>
					
					<!-- 버튼 -->
					<div>
						<button ></button>
					</div>
				</div>
			</section>
			<!-- 예약문의 -->
			<section class="inquiry col-4">
			
			</section>
		</section>
		
		<footer>
		    <small class="text-secondary">
		        제주특별자치도 제주시 애월읍<br>
		        사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목<br>
		        Copyright 2025 tongnamu. All right reserved.
		    </small>
		</footer>
		
	</div>
<script>
	$(document).ready(function () {
		//조회버튼 클릭
		$('#searchBookingBtn').on('click', function() {
			let name = $('#name').val().trim();
			let phoneNumber = $('#phoneNumber').val().trim();
			
			if (!name) {
				alert("이름을 입력하세요");
				return;
			}
			
			if (!phoneNumber) {
				alert("전화번호를 입력하세요");
				return;
			}
			
			//ajax통신
			$.ajax({
				//request
				type:"post"
				, url:"/booking/search-booking"
				, data:{"name":name, "phoneNumber":phoneNumber}
			
				//response
				, success:function(data) {
					//{"code":400, "error_message":"데이터가 존재하지 않습니다"}
					//{"code":200, "result":booking("id":1, "name":...)}
					if (data.code == 200) {
						alert("이름 :" + data.result.name 
								+ "\n날짜: " + data.result.date.substring()
								+ "\n일수: " + data.result.day
								+ "\n인원: " + data.result.headacount
								+ "\n상태: " + data.result.state);
					} else if (data.code == 400) {
						alert(data.error_message);
					}
				}
				, error:function(request, status, error) {
					alert("조회에 실패했습니다.");
				}
			});
		});
	});
</script>
</body>
</html>