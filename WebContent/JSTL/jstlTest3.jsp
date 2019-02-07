<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>jstlTest3.jsp</title>
</head>

<body>
	<h4>* JSTL 함수 *</h4>
	
	<%
	request.setCharacterEncoding("UTF-8");
	%>

	<c:set var="txt" value="    white space    "></c:set>
	<br>${txt}
	<br> 글자개수: ${fn:length(txt)}

	<c:set var="txt" value="${fn:trim(txt)}"></c:set>
	<br>${txt}
	<br> 글자개수: ${fn:length(txt)}

	<c:set var="txt" value="hungry...i need ddeokbbockiiiiii"></c:set>
	<br>${txt}
	<br> ${fn:substring(txt, 1, 6)}
	<br> after: ${fn:substringAfter(txt, "...")}
	<br> before: ${fn:substringBefore(txt, "...")}
	
	<br> startsWith(): ${fn:startsWith("hello world!", "ld!")}
	<br> endsWith(): ${fn:endsWith("hello world!", "ld!")}
	<br> indexOf(): ${fn:indexOf("abcdefghij", "f")}
	<br> replace(): ${fn:replace("world hello", "hello", "world")}

	<c:set var="txt" value="${fn:trim(txt)}"></c:set>
	<br>${txt}
	<br> 글자개수: ${fn:length(txt)}
			
	<hr style="margin: 50px 0 50px auto">
	
	<!-- 엔터를 <br>로 바꾸기 -->

	<%
		// JSP
		String content="";
		content.replace("\n","<br>");
	
		// EL+JSTL
		pageContext.setAttribute("cn", "\n");
	%>
	
	
	<c:set var="content" value="떡볶이가 
	먹고
	싶어요
	..."></c:set>
	${fn:replace(content, cn, "<br>") }
	
	<!-- 
	문자열에서 xml, html의 < > & ' " 문자들을 &lt; &gt; &amp; &#039; &#034; 로 바꿔준 뒤 문자열 리턴
	-->
	<c:out value="${fn:escapeXml('<>&')} }"/>
	

</body>
</html>