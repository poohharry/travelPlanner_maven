<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello test</h1>
	<form name="loginForm" method="post" action="login.do">
		<h2>로그인</h2>
		<div>
			<input type="text" name="id" id="loginId">		
			<label for="loginId">아이디</label>
		</div>
		<div>
			<input type="text" name="pw" id="loginPw">		
			<label for="loginPw">비밀번호</label>
		</div>
		<button type="button">로그인</button>
		
	</form>
</body>
</html>