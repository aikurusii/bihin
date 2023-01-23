<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("error") != null){	
	%>
	<p style="color:bule">ログイン失敗</p>
	<form action="Log" method="post">
		【IDとPWを入力してください。】<br>
		ログインID：<input type="text" name="mail" value="<%=request.getParameter("mail") %>"><br>
		PW：<input type="password" name="pw"><br>
		<input type="submit" value="ログイン">
	</form>
	<a href="./">戻る場合はこちら</a><br>
	<%
		} else {
	%>
	<form action="Log" method="post">
		【IDとPWを入力してください。】<br>
		ログインID：<input type="text" name="mail"><br>
		PW：<input type="password" name="pw"><br>
		<input type="submit" value="ログイン">
	</form>
	<a href="./">戻る場合はこちら</a>
	<%
		}
	%>
</body>
</html>