<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FORM DATA POST SPRING</title>
</head>
<body>
FORM DATA POST SPRING
<hr>
<hr>
EL 표현식으로 데이터 추출하기 : <br>
${ma_fvo1.datanum } <br>
${ma_fvo1.dataid } <br>
${ma_fvo1.datapw } <br>
${ma_fvo1.dataname } <br>
<hr>
EL 표현식 및 객체함수로 데이터 추출하기 : <br>
${ma_fvo1.getDatanum() } <br>
${ma_fvo1.getDataid() } <br>
${ma_fvo1.getDatapw() } <br>
${ma_fvo1.getDataname() } <br>
<hr>
</body>
</html>