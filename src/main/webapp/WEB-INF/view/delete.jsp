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
	<h1>削除に失敗しました。</h1>
	<h1>再度、IDを入力してください。</h1>
	<form action="BihinDeleteServlet">
		ID:<input type="text" name="id">
		<input type="submit" value="削除">
	</form>
	<%
		}else{
	%>
	<h1>削除するIDを入力してください。</h1>
		<form action="BihinDeleteServlet">
			ID:<input type="text" name="id">
			<input type="submit" value="削除">
		</form>
	<%
		}
	%>
</body>
</html>