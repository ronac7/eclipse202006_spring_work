<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XMLHttpRequest</title>
<script type="text/javascript">

	window.onload = function() {
		
		// 1. XMLHttpRequest 객체를 생성
		var req = new XMLHttpRequest();
		
		// 2. 서버와 통신할 때 사용할 처리 방법을 등록 한다. 
		var jsonObj;
		
		req.addEventListener("load", function(){
			jsonObj = req.response;
			alert(jsonObj);
			console.log(jsonObj);
		}, false);
		
		// 3. 요청을 전송하고 통신을 시작한다. 
	    req.open("GET", "data_02.json", true);
	    req.send(null);	
	}

</script>
</head>
<body>
<p id="view"></p>
</body>
</html>