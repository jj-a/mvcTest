<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>elTest3.jsp</title>
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
	
	<h4>* EL Collection (내장객체) *</h4>
	
	<%
	pageContext.setAttribute("kor",100);
	request.setAttribute("eng",80);
	session.setAttribute("mat",60);
	application.setAttribute("aver",80);
	 %>
	 
	<p> 1) Page 영역
	<br> JSP: <%=pageContext.getAttribute("kor")%>
	<br> EL: ${pageScope.kor}

	<p> 2) Request 영역
	<br> JSP: <%=request.getAttribute("eng")%>
	<br> EL: ${requestScope.eng}

	<p> 3) Session 영역
	<br> JSP: <%=session.getAttribute("mat")%>
	<br> EL: ${sessionScope.mat}

	<p> 4) Application 영역
	<br> JSP: <%=application.getAttribute("aver")%>
	<br> EL: ${applicationScope.aver}
	
	<h5>EL에서는 Scope 이름을 생략할 수 있다.</h5>
	<br> kor: ${kor}
	<br> eng: ${eng}
	<br> mat: ${mat}
	<br> aver: ${aver}

	<hr style="margin: 30px 0 30px auto">
	
	<!-- 
		page > request > session > application 순 
		(지역적 성격을 띈 객체가 우선순위가 높음) 
	-->

	<%
	pageContext.setAttribute("num",500);
	request.setAttribute("num",600);
	session.setAttribute("num",700);
	application.setAttribute("num",800);
	%>

	<br> num: [ ${num} ] (pageContext 값 출력)
	<br> uname: [ ${uname} ] (없는 Parameter 호출 시, 공백 출력)


</body>

</html>