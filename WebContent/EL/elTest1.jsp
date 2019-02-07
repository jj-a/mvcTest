<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>elTest1.jsp</title>
</head>

<body>

	<h4>* EL (Expression Language) 표현언어 *</h4>

	<br>123+456
	<br>표현식: <%=123+456%>
	<br>표현언어: ${100 }
	<br>표현언어: ${123+456 }

	<hr style="margin: 30px 0 30px auto">
	<h4>* EL에서 사용하는 연산자 *</h4>

	<br>더하기 : ${123+456 }
	<br>빼기 : ${123-456 }
	<br>곱하기 : ${123*456 }
	<br>나누기 : ${123/456 }
	<br>나머지 : ${ 6%5 }
	<!--
	<br>나누기 : ${5 div 6 }
	<br>나머지 : ${5 mod 7 }
	-->
	<br>2가 3보다 작다 : ${2 < 3 }
	<br>2가 3보다 크다 : ${2 > 3 }
	<br>2가 3보다 작다 : ${2 lt 3 }
	<br>2가 3보다 크다 : ${2 gt 3 }
	<br>삼항연산자 : ${(5 > 3) ? "true" : "false" }
	<br>HOST : ${header["host"] }
	<br><%=request.getContextPath()%>


</body>

</html>