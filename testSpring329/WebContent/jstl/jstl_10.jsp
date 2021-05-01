<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 10</title>
</head>
<body>
<h3>JSTL 10</h3>
<hr>
<c:set var="date" value="<%=new Date() %>" />
<h3>날짜와 시간의 기본적인 표시 : ${date }</h3>
<h3>시간은 클라이언트 시간, 서버 시간이 있다.</h3>
○ 오늘의 날짜 : <fmt:formatDate value="${date }" type="date" /><br>
○ 현재의 시각 : <fmt:formatDate value="${date }" type="time" /><br>
○ 날짜와 시각 : <fmt:formatDate value="${date }" type="both" /><br>
○ Short : <fmt:formatDate value="${date }" type="both" dateStyle="short" timeStyle="short" /><br>
○ Medium : <fmt:formatDate value="${date }" type="both" dateStyle="medium" timeStyle="medium" /><br>
○ Long : <fmt:formatDate value="${date }" type="both" dateStyle="long" timeStyle="long"/><br>
○ Full : <fmt:formatDate value="${date }" type="both" dateStyle="full" timeStyle="full"/><br>
○ Pattern1 : <fmt:formatDate value="${date }" type="date" pattern="yyyy년 MM월 dd일(E)" /><br>
○ Pattern2 : <fmt:formatDate value="${date }" type="time" pattern="(a) hh시 mm분" /><br>
<br>
<hr>
<br>
<%
Date now = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초");
%>
○ JAVA : <%=now %><br>
○ JAVA Format : <%=sdf.format(now) %>
</body>
</html>