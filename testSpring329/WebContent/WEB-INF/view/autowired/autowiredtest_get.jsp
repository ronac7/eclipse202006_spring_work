<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="a.b.c.com.vo.FormDataVO" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AUTOWIRED TEST GET</title>
</head>
<body>
AUTOWIRED TEST GET
<hr>
<%

	Object obj = request.getAttribute("list");	
	if (obj !=null){
		List<FormDataVO> list = (List)obj;	
		
		if (list.size() > 0){
			FormDataVO fdvo = list.get(0);
			out.println("fdvo.getDatanum() >>> : " + fdvo.getDatanum() + "<br>");
			out.println("fdvo.getDataid() >>> : " + fdvo.getDataid() + "<br>");
			out.println("fdvo.getDatapw() >>> : " + fdvo.getDatapw() + "<br>");
			out.println("fdvo.getDataname() >>> : " + fdvo.getDataname() + "<br>");
		}
	}

%>
</body>
</html>