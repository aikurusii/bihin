<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Bihin" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>備品一覧</title>
</head>
<body>
<h1>備品一覧</h1>
		
		<table border="1">
		<tr>
		<th>id</th>
		<th>名前</th>
		<th>数量</th>
		</tr>
		<%
		List<Bihin> list =(ArrayList<Bihin>)request.getAttribute("list");
		for(Bihin s : list) {
		%>
		<tr>
		<td><%=s.getId() %></td>
		<td><%=s.getName() %></td>
		<td><%=s.getKazu() %></td>
		</tr>
		<%} %>
		</table>
		
</body>
</html>