<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>elTest4.jsp</title>
</head>

<body>

	<hr style="margin: 30px 0 30px auto">
	
	<!-- 
	*EL 내장객체*
	pageContext       pageContext 객체 참조 
	pageScope         page 영역 참조 
	requestScope      request 영역 참조 
	sessionScope      session 영역 참조 
	applicationScope  application 영역 참조 
	param             요청 파라미터의  값을 String으로, request.getParameter()의 결과와 동일 
	paramValue        요청 파라미터의  값을 String[]으로, request.getParameterValues()의 결과와 동일 
	header            요청 header 정보, request.getHeader()의 결과와 동일 
	headerValues      요청 header 정보를 배열, request.getHeaders()의 결과와 동일 
	cookie            쿠키 참조, request.getCookies()결과와 동일 
	initParam         컨텍스트의 초기화 파라미터, application.getInitParameter(이름)의 결과와 동일하다.
	 -->
	
	<h4>* JSP - EL 간 값 공유 *</h4>
	
	<%
	pageContext.setAttribute("kor",100);
	request.setAttribute("eng",80);
	session.setAttribute("mat",60);
	application.setAttribute("aver",80);
	%>
	 
	<h5>JSP와 EL 변수는 서로 값을 공유할 수 있다.</h5>
	<% String uname="솔데스크"; %>
	<br> uname(JSP): <%=uname%>
	<br> uname(EL): ${uname}	<!-- 왜안나오지,, -->

	<h5>같은 페이지 내에서 JSP와 EL 구문이 서로 값을 공유해야할 땐 pageContext Scope를 활용한다.</h5>
	<% pageContext.setAttribute("uid","soldesk"); %>
	<br> uid(JSP): <%=pageContext.getAttribute("uid")%>
	<br> uid(EL): ${pageScope.uid}
	<br> uid(EL/): ${uid} (생략)

	

	<hr style="margin: 30px 0 30px auto">


</body>

</html>