<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録フォーム</title>
</head>
<body>
<h2>登録する内容を入力してください。</h2>
<form action="RegisterUserConfirmServlet" method="post">
		名前：<input type="text" name="name"><br>
		メールアドレス：<input type="email" name="email"><br>
		パスワード：<input type="password" name="pw"><br>
		<input type="submit" value="登録">
</form>
</body>
</html>