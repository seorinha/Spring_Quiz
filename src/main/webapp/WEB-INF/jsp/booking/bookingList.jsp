<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz03 예약목록 보기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<%-- jquery는 원본으로 --%>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/css/booking/style.css">
</head>
<body>
	<div id="wrap">
		<header class="container d-flex justify-content-center">
			<h1>통나무 팬션</h1>
		</header>
		
		<nav class="menu">
			<ul class="nav nav-fill">
				<li class="nav-item"><a href="#" class="nav-link text-white">펜션소개</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white">객실보기</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white">예약하기</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white">예약목록</a></li>
			</ul>
		</nav>
		
		<section class="reserve d-flex">
			<h3>예약목록 보기</h3>
			<table class="table text-center">
				<thead>
					<tr>
						<th>이름</th>
						<th>예약날짜</th>
						<th>숙박일수</th>
						<th>숙박인원</th>
						<th>전화번호</th>
						<th>예약상태</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${bookingList}" val="book">
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>
							<button class="btn btn-danger">삭제</button>
						</td>
					</tr>
				</c:forEach>
				</tbody>	
			</table>
		</section>
		
		<footer>
			<small class="text-secondary">
				제주특별자치도 제주시 애월읍<br>
				사업자등록번호:111-22-255222/농어촌민박사업자지정/대표:김동욱<br>
				Copyright 2025 © tongnamu.All right reserved.
			</small>
		</footer>
	</div>
</body>
</html>