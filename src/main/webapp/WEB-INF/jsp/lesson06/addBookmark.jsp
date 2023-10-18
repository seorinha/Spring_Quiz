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
			<label for="name"><b>제목</b></label>
			<input type="text" id="name" class="form-control" placeholder="제목을 입력하세요">
		</div>
		<div class="form-group">
			<label for="url"><b>URL</b></label>
			<div class="form-inline">
				<input type="text" id="url" class="form-control col-11" placeholder="주소를 입력하세요">
				<button type="button" class="btn btn-info" id="urlCheckBtn">중복확인</button>
			</div>
			<small id="duplicatedText" class="text-danger d-none">중복된 url입니다.</small>
			<small id="availableText" class="text-success d-none">저장 가능한 url입니다.</small>
			
		</div>
		<button type="button" id="addBtn" class="btn btn-success btn-block">추가</button>
	</div>
<script>
	$(document).ready(function() {
		//quiz2 중복 버튼클릭
		$('#urlCheckBtn').on('click', function() {
			//alert("클릭");
			let url = $('#url').val().trim();
			if (!url) {
				alert("검사할 url을 입력하세요");
				return;
			}
			//db에서 url중복 확인 - ajax 통신
			$.ajax({
				//request
				type:"post" //url이 길수도 있기때문에 
				, url:"/lesson06/quiz02/is-duplicated-url"
				, data:{"url":url}
			
				//response
				, sucess:function(data) { //data를 string이 아닌 json으로 =>dictionary
					// {"code":200, "is_duplication":true}    true이면 중복
					if (data.is_duplication) {
						//중복
						$('#duplicatedText').removeClass('d-none');
						$('#availableText').addClass('d-none');
					} else {
						//중복 아님
						$('#duplicatedText').addClass('d-none');
						$('#availableText').removeClass('d-none');
					}
				}
				, error:function(request, status, error) {
					alert("중복 확인에 실패했습니다.");
				}
			});
		});
		
			
		
		$('#addBtn').on('click', function() {
			//alert("버튼클릭");
			
			//validation check
			let name = $("#name").val().trim();
			let url = $("#url").val().trim();
			
			console.log(name); //들어있는지 확인하는 절차
			console.log(url);
			
			if (!name) {
				alert("제목을 입력하세요");
				return;
			}
			
			if (!url) {
				alert("주소를 입력하세요");
				return; 
			}
			
			if (url.startsWith("http://") == false && 
					url.startsWith("https://") == false) {
				alert("주소 형식이 잘못 되었습니다.");
				return;
			}
			
			
			//quiz02 저장 가능한 url인지 확인
			if ($('#availableText').hasClass('d-none')) { //availableText d-none이 있으면 가입불가
				alert("url 중복확인을 다시 해주세요.");
				return;
			}
			
			
			//AJAX 통신(브라우저가 하는 역할 내가 하기): 서버 요청
			$.ajax({
				//request
				type:"post"
				, url:"/lesson06/quiz01/add-bookmark"
				, data:{"name":name, "url":url}
			
				//response
				//call back 함수
				, success:function(data) { //data: response결과의 응답값(json String) => dictory object가 된다, 위의 data와는 아무관계없음, 어떤 글자가와도 상관없으나 관례적으로 data를 넣는다
					//data는 json String이 아니라 object로 변환된 형태로 사용할 수 잇다 jquert의 ajax 함수의 기능때문에
					//서버 처리 후에 에러가 없을 때 수행
					//alert(data.code);
					//alert(data.result);
					
					if (data.code == 200) { //data.result == "success"로 넣어도 된다 둘중 아무거나
						location.href = "/lesson06/quiz01/bookmark-list";
					}
				}
				, error:function(request, status, error){ //파라미터가 관례적으로 3가지이다
					alert("추가에 실패했습니다.관리자에게 문의해주세요");
				}
				
			});	
		});
	});
</script>
</body>
</html>