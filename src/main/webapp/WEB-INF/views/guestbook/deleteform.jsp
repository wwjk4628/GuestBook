<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form method="post" action="<%= request.getContextPath() %>/gb">
	<input type='hidden' name="a" value="delete">
	<input type='hidden' name="no" value="<%= request.getParameter("no")%>">

	<table>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="확인"></td>
			<td><a href="/GuestBook/gb">목록으로</a></td>
		</tr>
	</table>
	</form>
</body>
</html>