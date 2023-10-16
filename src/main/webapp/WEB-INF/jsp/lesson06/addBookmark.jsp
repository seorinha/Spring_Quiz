<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01 즐겨찾기 추가 화면</title>
<!-- bootstrap CDN link -->
 	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- AJAX를 사용하려면 반드시 jquery 원본이 필요하다 -->
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<h1>즐겨 찾기 추가 하기</h1>
		<div class="form-group">
			<label for="title"><b>제목</b></label>
			<input type="text" id="title" name="title" class="form-control col-10" placeholder="제목을 입력하세요">
		</div>
		<div class="form-group">
			<label for="address"><b>주소</b></label>
			<input type="text" id="address" name="address" class="form-control col-10" placeholder="주소를 입력하세요">
		</div>
		<input type="button" id="joinBtn" class="btn btn-success col-10" value="추가">
	</div>
<script>
	$(document).ready(function() {
		$('#joinBtn').on('click', function() {
			//alert("버튼클릭");
			//validation check
			let title = $("title").val().trim();
			if (title == "") {
				alert("제목을 입력하세요");
				return false; 
			}
			
			let title = $("address").val().trim();
			if (address == "") {
				alert("주소를 입력하세요");
				return false; 
			}
			
			//AJAX: 서버 요청
			$.ajax({
				//request
				type:"post"
				, url:"/lesson06/quiz01/add-bookmark"
				, data:{"title":title, "address":address}
			
				//response
				//call back 함수
				, success:function(data) { //data: response결과의 응답값, 위의 data와는 아무관계없음
					//서버 처리 후에 에러가 없을 때 수행
					if (data == "성공") {
						location.href = "/lesson06/quiz01/bookmark-list";
					}
				}
				
				
			});
			
			
		});
	});
</script>
</body>
</html>