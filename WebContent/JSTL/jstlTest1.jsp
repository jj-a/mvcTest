<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>jstlTest1.jsp</title>
</head>

<body>
	<h4>* JSTL (JSP 전용 태그) *</h4>

	1) JSP 변수 선언
	<% int a = 3; %>
	<br> a: <%=a%>

	<hr style="margin: 30px 0 30px auto">
	
	2) JSTL 변수 선언
	<c:set var="b">5</c:set>
	<c:set var="c" value="7"></c:set>
	<br> b: ${b}
	<br> c: ${c}
	<br> b+c: ${b+c}

	<hr style="margin: 30px 0 30px auto">
	
	<c:set var="dt" value="<%=new Date()%>"></c:set>
	오늘날짜: ${dt}
	<br><c:out value="2"></c:out>
	<br><c:out value="4"></c:out>
	
	<hr style="margin: 30px 0 30px auto">
	
	3) b,c 변수 제거
	<c:remove var="b" />
	<c:remove var="c" />
	<br> b+c : ${b+c}

</body>
</html>