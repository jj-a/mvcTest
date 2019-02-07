<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>elTest2ok.jsp</title>
</head>

<body>

	<hr style="margin: 30px 0 30px auto">

	<h4>* EL Parameter 결과*</h4>

	<div style="display: inline-block; margin:20px">
		<h4> 1) JSP 방식 </h4>
		<br>ID: <%=request.getParameter("id")%>
		<br>PW: <%=request.getParameter("pw")%>
	</div>
	<div style="display: inline-block; margin:20px">
		<h4> 2) EL방식 </h4>
		<br>ID: ${param.id}
		<br>PW: ${param.pw}
	</div>

	<hr style="margin: 30px 0 30px auto">

</body>

</html>