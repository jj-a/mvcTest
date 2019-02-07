<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>jstlTest2.jsp</title>
</head>

<body>
	<h4>* JSTL 제어문 연습 *</h4>

	<form action="jstlTest2ok.jsp" method="post">
		<p><label for="name">이름</label> : <input type="text" name="name" id="name"></p>
		<p><label for="age">나이</label> : <input type="text" name="age" id="age"></p>
		<p><input type="submit" value="확인"></p>
	</form>

	<hr style="margin: 30px 0 30px auto">

</body>
</html>