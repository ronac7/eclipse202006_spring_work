<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="a.b.c.com.vo.FormDataVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FORM DATA GET SPRING</title>
</head>
<body>
FORM DATA GET SPRING
<hr>
EL 표현식으로 데이터 추출하기 : <br>
${fvooo.datanum } <br>
${fvo.dataid } <br>
${formDataVO.datapw } <br>
${aaa.dataname } <br>
<hr>
EL 표현식 및 객체함수로 데이터 추출하기 : <br>
${fvooo.getDatanum() } <br>
${fvo.getDataid() } <br>
${formDataVO.getDatapw() } <br>
${aaa.getDataname() } <br>
<hr>
객체로 데이터 추출하기 : <br>
<%

	Object obj = request.getAttribute("fvooo");
	FormDataVO fvo1 = (FormDataVO)obj;
	
	out.println("fvo1 >>> : " + fvo1 + "<br>");
	out.println("fvo1.getDatanum() >>> : " + fvo1.getDatanum() + "<br>");
	out.println("fvo1.getDataid() >>> : " + fvo1.getDataid() + "<br>");
	out.println("fvo1.getDatapw() >>> : " + fvo1.getDatapw() + "<br>");
	out.println("fvo1.getDataname() >>> : " + fvo1.getDataname() + "<br>");

	System.out.println("fvo1 >>> : " + fvo1);
	System.out.println("fvo1.getDatanum() >>> : " + fvo1.getDatanum());
	System.out.println("fvo1.getDataid() >>> : " + fvo1.getDataid());
	System.out.println("fvo1.getDatapw() >>> : " + fvo1.getDatapw());
	System.out.println("fvo1.getDataname() >>> : " + fvo1.getDataname());

%>
</body>
</html>