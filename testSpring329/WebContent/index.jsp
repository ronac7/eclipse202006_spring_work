<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스프링</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		// alert("ready >>> : ");
		
		// GET 방식
		$(document).on("click", "#getbtn", function(){
			alert("getbtn >>> : 진입 ");
			
			$("#methodForm").attr({
				"action":"helloWorld_get.ljs",
				"method":"GET",
				"enctype":"application/x-www-form-urlencoded"
			}).submit();
		});
		
		// POST 방식
		$(document).on("click", "#postbtn", function(){
			
			alert("postbtn >>> : 진입 ");
			
			$("#methodForm").attr({
				"action":"helloWorld_post.ljs",
				"method":"POST",
				"enctype":"application/x-www-form-urlencoded"
			}).submit();
		});
	})
</script>
</head>
<body>
스프링 MVC 메인 : Spring 3.2.9 library
<hr>
<a href="helloWorld_Controller_find.ljs">HelloWorld 실행</a><br>
<a href="helloWorld_get.ljs">HelloWorld GET 실행</a><br>
<!-- a태그 이용시 POST방식 사용 불가 -->
<a href="helloWorld_post.ljs">HelloWorld POST 실행</a><br>
<form name="methodForm" id="methodForm">
	<button type="button" id="getbtn">GET</button>
	<!-- a태그가 아닌 $("#methodForm").attr 사용했기 때문에 POST방식 사용 가능!! -->
	<button type="button" id="postbtn">POST</button>
</form>
<hr>
<a href="viewJsp_1_stringTest_find.ljs">viewJsp_1_stringTest_find.ljs 실행</a><br>
<a href="viewJsp_2_modelandview_find.ljs">viewJsp_2_modelandview_find.ljs 실행</a><br>
<a href="viewJsp_3_voidTest_find.ljs">viewJsp_3_voidTest_find.ljs 실행</a><br>
<hr>
<a href="formdata_find.ljs">FORM DATA 실행</a>
<hr>
<a href="autowiredTest.ljs">오토와이어드(의존성 주입 : DI) 실행</a>
</body>
</html>