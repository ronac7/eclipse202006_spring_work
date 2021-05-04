<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="a.b.c.jstl.vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>

<%
ArrayList<MemberVO> list = new ArrayList<>();
list.add(new MemberVO("홍길동", "hong", "1234", 11, "서울특별시", "010-1111-1111"));
list.add(new MemberVO("홍길동", "hong", "1234", 22, "서울특별시", "010-1111-1111"));
list.add(new MemberVO("홍길동", "hong", "1234", 33, "서울특별시", "010-1111-1111"));
list.add(new MemberVO("홍길동", "hong", "1234", 44, "서울특별시", "010-1111-1111"));
list.add(new MemberVO("홍길동", "hong", "1234", 55, "서울특별시", "010-1111-1111"));

// pageContext : JSP 기본 내장 객체 : 따로 선언하지 않아도 참조하여 사용가능
// 같은 JSP 페이지 내에서는 서로 값을 공유할 수 있다.
pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL_09</title>
</head>
<body>
<h3>JSTL 09</h3>
<hr>
○ JAVA for<br />
<ul>
	<%
		for(int i = 0; i < list.size(); i++) {
			out.println("<li>" + list.get(i).getIrum());
			out.println(list.get(i).getId());
			out.println(list.get(i).getPw());
			out.println(list.get(i).getAge());
			out.println(list.get(i).getAddr());
			out.println(list.get(i).getTel() + "</li>");
		}
	%>
</ul>
<hr />
○ JAVA forEach<br />
<ul>
	<%
		for(MemberVO dvo : list) {
			out.println("<li>");
			out.println(dvo.getIrum());
			out.println(dvo.getId());
			out.println(dvo.getPw());
			out.println(dvo.getAge());
			out.println(dvo.getAddr());
			out.println(dvo.getTel());
			out.println("</li>");
		}
	%>
</ul>
<hr />
○ EL 표기법<br />
<!--
	EL 표기법에서의 list는 ArrayList<MemberVO> list 의 list 가 아니라
	pageContext.setAttribute("list", list); 로 세팅해준 list이다!
-->
<ul>
	<li>${list[0].irum } ${list[0].id } ${list[0].pw } ${list[0].age } ${list[0].addr } ${list[0].tel }</li>
	<li>${list[1].irum } ${list[1].id } ${list[1].pw } ${list[1].age } ${list[1].addr } ${list[1].tel }</li>
	<li>${list[2].irum } ${list[2].id } ${list[2].pw } ${list[2].age } ${list[2].addr } ${list[2].tel }</li>
	<li>${list[3].irum } ${list[3].id } ${list[3].pw } ${list[3].age } ${list[3].addr } ${list[3].tel }</li>
	<li>${list[4].irum } ${list[4].id } ${list[4].pw } ${list[4].age } ${list[4].addr } ${list[4].tel }</li>
</ul>
<hr />
○ JSTL core<br />
<!--
	여기서의 list도 pageContext.setAttribute를 통해 세팅해준 list !!
-->
<ul>
	<c:forEach var="i" items="${list }">
		<li>${i.irum } ${i.id  } ${i.pw  } ${i.age  } ${i.addr } ${i.tel  }</li>
	</c:forEach>
</ul>
</body>
</html>