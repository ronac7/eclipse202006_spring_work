<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FORM DATA POST SPRING 111</title>
</head>
<body>
FORM DATA POST SPRING 111
<hr>
<hr>
EL 표현식으로 데이터 추출하기 : <br>
${formDataVO.datanum } <br>
${formDataVO.dataid } <br>
${formDataVO.datapw } <br>
${formDataVO.dataname } <br>
<hr>
EL 표현식 및 객체함수로 데이터 추출하기 : <br>
${formDataVO.getDatanum() } <br>
${formDataVO.getDataid() } <br>
${formDataVO.getDatapw() } <br>
${formDataVO.getDataname() } <br>
<hr>
</body>
</html>