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
<!--
	EL : Expression Language : JSP표현식이나 액션태그 사용하는 대신
		 보다 쉽게 꺼낼 수 있게 하는 기술
-->
EL 표현식으로 출력 해보기 : ${msg } <br>
<!-- 아래처럼 쓰는 대신 EL 표현식으로 간단히 불러올 수 있다. -->
<%
	Object obj = request.getAttribute("msg");
	String msgS = (String)obj;
	out.println("msgS >>> : " + msgS + "<br>");
	System.out.println("msgS >>> : " + msgS);
%>
jsp 표현식 : <%= msgS %><br>
</body>
</html>