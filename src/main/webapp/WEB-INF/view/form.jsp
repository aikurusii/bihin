<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form画面</title>
</head>
<body>
	<%User ac=(User)session.getAttribute("user"); %>
	<h1>備品管理</h1>
	<h3>ようこそ<%=ac.getName() %></h3>
	<a href="Register">備品追加</a>
	<a href="Delete">備品削除</a>
	<a href="">備品編集</a>
	<a href="Fixtureslist">備品一覧</a>
</body>
</html>