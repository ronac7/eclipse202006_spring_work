<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HELLO POST</title>
</head>
<body>
<h3>HELLO POST</h3>
<hr>
EL 표현식으로 출력 해보기 : ${msg } <br>
<%
	Object obj = request.getAttribute("msg");
	String msgS = (String)obj;
	out.println("msgS >>> : " + msgS + "<br>");
	System.out.println("msgS >>> : " + msgS);
%>
jsp 표현식 : <%= msgS %><br>
</body>
</html>