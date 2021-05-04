<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL_11</title>
</head>
<body>
<h3>JSTL 11</h3>
<hr>
<c:set var="num" value="123456789" />
<h3>숫자 포맷 : ${num }</h3>
○ 형식1 : <fmt:formatNumber value="${num }" groupingUsed="true"/><br />
○ 형식2 : <fmt:formatNumber value="${num }" groupingUsed="false"/><br />
○ 형식3 : <fmt:formatNumber value="${num }" pattern="#,##0" /><br />
○ 형식4 : <fmt:formatNumber value="${num }" pattern="#,##0개" /><br />
<!-- //? #과 0의 차이는 잘 모르겠지만 컴마 뒤에 #이 3개면 3자리로 끊고, 0이 포함되어도 컴마뒤에 3개이면 3자리로 끊는다. -->

<h3>기타 포맷 : 통화, 백분율</h3>
<%--통화 기호를 입력할 경우 특수문자 : ㄹ → 한자 --%>
○ 금액1 : <fmt:formatNumber value="${num }" type="currency" currencySymbol="￦"/><br />
○ 금액2 : <fmt:formatNumber value="${num }" type="currency" currencySymbol="＄"/><br />
○ 금액3 : <fmt:formatNumber value="${num }" pattern="￦#,##0원" /><br />
○ 백분율1 : <fmt:formatNumber value="0.123" type="percent" /><br />
○ 백뷴율2 : <fmt:formatNumber value="0.123" pattern="0.00%" /><br />
</body>
</html>