<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>jstlTest2ok.jsp</title>
<style>
table {
max-width: 800px;
margin: 0 auto;
text-align: center;
}
th, td {
padding: 20px 20px 20px 20px;
}
.red {
color: red;
}
.blue {
color: blue;
}
</style>
</head>

<body>
	<h4>* 결과페이지 (EL+JSTL) *</h4>
	
	<%
	request.setCharacterEncoding("UTF-8");
	%>

	<c:set var="name" value="${ param.name}"></c:set>
	<c:set var="age" value="${ param.age}"></c:set>
	
	<!-- 단일 조건문 -->
	<c:if test="${name=='soldesk' }">솔데스크</c:if>
	
	<!-- 다중 조건문 -->
	<c:choose>
	<c:when test="${age<=0}"><c:set var="group" value="잘못된 나이"></c:set></c:when>
	<c:when test="${age<10}"><c:set var="group" value="어린이"></c:set></c:when>
	<c:when test="${age<20}"><c:set var="group" value="청소년"></c:set></c:when>
	<c:otherwise><c:set var="group" value="성인"></c:set></c:otherwise>
	</c:choose>

	<table border=1>
		<tr>
			<th>이름</th>
			<td><c:out value="${name}"></c:out></td>
		</tr>
		<tr>
			<th>나이</th>
			<td><c:out value="${age}"></c:out> (${group})</td>
		</tr>
		<tr>
			<th>반복</th>
			<td>
			<!-- 반복문 -->
			<c:forEach var="i" begin="1" end="${age}" step="1">
				<c:choose>
					<c:when test="${i%2==0}">
						<span class="blue"><c:out value="${i}"></c:out></span>
					</c:when>
					<c:otherwise>
						<span class="red"><c:out value="${i}"></c:out></span>
					</c:otherwise>
				</c:choose>
				<!--<c:if test="${i%30==0}"><br></c:if>-->
			</c:forEach>
			
			</td>
		</tr>
	</table>

	<hr style="margin: 50px 0 50px auto">


	<h4>아래는 JSP 결과</h4>

	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		// 나이: ~10 어린이 / 10~19 청소년 / 20~ 성인
		String group;
		if(age<=0) group="잘못된 나이";
		else if(age<10) group="어린이";
		else if(age<20) group="청소년";
		else group="성인";
		
	%>

	<table border=1>
		<tr>
			<th>이름</th>
			<td><%=name%></td>
		</tr>
		<tr>
			<th>나이</th>
			<td><%=age%> (<%=group%>)</td>
		</tr>
		<tr>
			<th>반복</th>
			<td>
			<%
			for(int i=1;i<=age;i++){
				if(i%2==0){
					%><span class="blue"><%=i%></span><%
				} else {
					%><span class="red"><%=i%></span><%
				} // if end
				if(i%30==0)%><br><%
			} // for end
			%>
			</td>
		</tr>
	</table>

	<hr style="margin: 30px 0 30px auto">

</body>
</html>