<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>loginForm.jsp</title>
<style>
th, td {
margin: 10px;
}
</style>
</head>
<body>

<h3>로그인</h3>

<form name="loginFrm" method="get" action="loginproc.do" onsubmit="true">
	<table border=1>
		<tr>
			<td>ID</td>
			<td colspan=2><input type="text" name="uid" id="uid" value="" size="10" maxlength="16" placeholder="아이디"></td>
		</tr>
		<tr>
			<td>PASSWORD</td>
			<td colspan=2><input type="password" name="upw" id="upw" size="10" maxlength="16" placeholder="비밀번호"></td>
		</tr>
		<tr>
			<td colspan=3><input type="submit" value="로그인"></td>
		</tr>
		<tr>
			<td><input type="checkbox" name="c_id" value="SAVE"> Save ID</td>
			<td onclick="window.location='agreement.jsp'" onmouseover="style='cursor:pointer;'">JOIN</td>
			<td onclick="window.location='findIdpw.jsp'" onmouseover="style='cursor:pointer;'">Find ID/PW</td>
		</tr>
	</table>
</form>


</body>
</html>