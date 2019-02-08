<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>loginResult.jsp</title>
<style>
th, td {
	padding: 20px 20px 20px 20px;
}
</style>
</head>
<body>

	<h3>로그인 결과</h3>

	<table border=1>
		<tr>
			<th colspan=5>JSP</th>
		</tr>
		<tr>
			<th>request</th>
			<td>ID</td>
			<td><%=request.getAttribute("r_uid")%></td>
			<td>PASSWORD</td>
			<td><%=request.getAttribute("r_upw")%></td>
		</tr>
		<tr>
			<th>session</th>
			<td>ID</td>
			<td><%=session.getAttribute("s_uid")%></td>
			<td>PASSWORD</td>
			<td><%=session.getAttribute("s_upw")%></td>
		</tr>
		<tr>
			<th>application</th>
			<td>ID</td>
			<td><%=application.getAttribute("a_uid")%></td>
			<td>PASSWORD</td>
			<td><%=application.getAttribute("a_upw")%></td>
		</tr>
	</table>
	
	<table border=1>
		<tr>
			<th colspan=5>EL</th>
		</tr>
		<tr>
			<th>request</th>
			<td>ID</td>
			<td>${r_uid}</td>
			<td>PASSWORD</td>
			<td>${r_upw}</td>
		</tr>
		<tr>
			<th>session</th>
			<td>ID</td>
			<td>${s_uid}</td>
			<td>PASSWORD</td>
			<td>${s_upw}</td>
		</tr>
		<tr>
			<th>application</th>
			<td>ID</td>
			<td>${a_uid}</td>
			<td>PASSWORD</td>
			<td>${a_upw}</td>
		</tr>
		<tr>
			<td colspan=5>${msg}</td>
		</tr>
		<tr>
			<td colspan=5>${img}</td>
		</tr>
	</table>
	

</body>
</html>