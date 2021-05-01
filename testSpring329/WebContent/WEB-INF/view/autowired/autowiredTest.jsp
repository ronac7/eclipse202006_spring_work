<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AUTOWIRED TEST</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		// alert("ready >>> : ");
		
		// GET 방식
		$(document).on("click", "#getbtn", function() {
			alert("getbtn >>> : 진입");
			
			$("#formData").attr( {
				"action":"autowiredtest_get.ljs",
				"method":"GET",
				"enctype":"application/x-www-form-urlencoded"
			}).submit();
		});
	})
	
</script>
</head>
<body>
	FORM DATA AUTOWIRED
	<hr>
	<form name="formData" id="formData">
		회원번호 : <input type="text" name="datanum" id="datanum"><br>
		아이디 : <input type="text" name="dataid" id="dataid"><br>
		비밀번호 : <input type="text" name="datapw" id="datapw"><br>
		이름 : <input type="text" name="dataname" id="dataname"><br>
		<button type="button" id="getbtn">GET AUTOWIRED</button>
	</form>
</body>
</html>