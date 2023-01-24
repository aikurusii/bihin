<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録フォーム</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String errorCode = request.getParameter("error");
	if(errorCode != null && errorCode.equals("1")){
		User user = (User)session.getAttribute("input_data");
	%>
	<p style="color:red">登録失敗...</p>
	<h2>登録する内容を入力してください。</h2>
	<form action="RegisterUserConfirmServlet" method="post">
		名前：<input type="text" name="name" value=<%=user.getName() %>><br>
		メールアドレス：<input type="mail" name="mail" value=<%=user.getMail() %>><br>
		パスワード：<input type="password" name="pw"><br>
		<input type="submit" value="登録">
	</form>
	<%
		}else{
	%>
	<h2>登録する内容を入力してください。</h2>
	<form action="RegisterUserConfirmServlet" method="post">
		名前：<input type="text" name="name"><br>
		メールアドレス：<input type="mail" name="mail"><br>
		パスワード：<input type="password" name="pw"><br>
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>
</body>
</html>