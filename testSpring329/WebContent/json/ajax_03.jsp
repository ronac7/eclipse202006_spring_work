<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>read JSON</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
		$('#btn').click(function(){
			alert('btn 진입 : <<<>>>');
			
			var result = $("#readJson");
			alert("id >>> : " + result);
		
			$.ajax({
				url : "data_03.jsp",
				dataType : "json",				
				success : function(data){	
					console.log("data >>> : " + data);					
					
					var results = JSON.stringify(data);					
					console.log("results >>> : " + results);	
					console.log("results.bools >>> : " + results.bools);	
					
					var v = JSON.parse(results);
					console.log("v >>> : " + v);
					
					console.log("v >>> : " + v.bools);
					if (v.bools == "success"){
						alert("true");
					}else{
						alert("false");
					}
				},
				error : function(e){
					console.log("에러가 >>> : " + e.responseText);
				}
			});					
		});
	});			
</script>
</head>
<body>
<form>
	<input type="button" id="btn" value="클릭">
	<div id="readJson"></div>
</form>
</body>
</html>
