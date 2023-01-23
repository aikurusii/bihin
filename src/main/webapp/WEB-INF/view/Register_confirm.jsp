<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>確認</title>
</head>
<body>
<h3>下記の内容で登録します。よろしいですか？</h3>
<%
	User user = (User)session.getAttribute("input_data");
%>
名前：<%=user.getName() %><br>
メールアドレス：<%=user.getMail() %><br>
パスワード：*********<br>
<a href="RegisterUserExecuteServlet">登録</a><br>
<a href="RegisterUserFormServlet">戻る</a><br>
</body>
</html>