<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("error") != null){
	%>
	<h1 style="color:red">登録に失敗しました。</h1>
	<h1>再度、以下の項目を入力してください。</h1>
	<form action="BihinRegisterServlet">
		商品名:<input type="text" name="name"><br>
		個数:<input type="number" name="kazu"><br>
		<input type="submit" value="登録">
	</form>
	<%
		}else{
	%>
	<h1>以下の項目を入力してください。</h1>
		<form action="BihinRegisterServlet">
		商品名:<input type="text" name="name"><br>
		個数:<input type="number" name="kazu"><br>
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>
</body>
</html>