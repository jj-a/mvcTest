<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>jstlTest2ok_jsp.jsp</title>
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
	<h4>* 결과페이지 (JSP) *</h4>

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