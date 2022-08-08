<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
   	
</head>
<body id="body-pd">
	
	<!-- 사이드바 -->
	<jsp:include page="../commonJSP/sideBar.jsp"/>
	
	<main class="form-signin">
		<form action="/login.do" method="post" name='loginForm'>
			<h1 class="h3 mb-3 fw-normal" style="text-align:center;">로그인</h1>
			
			<div class="form-floating">
				<input type="text" name="id" class="form-control" id="floatingInput">
				<label for="floatingInput">아이디</label>
			</div>
			<div class="form-floating">
				<input type="password" name="pw" class="form-control" id="floatingPassword">
				<label for="floatingPassword">비밀번호</label>
			</div>
			<button class="w-100 btn btn-lg btn-dark" value="login" type='submit'>로그인</button>
		</form>
		
		<div style="text-align: center; margin-top: 10px;">
			<span style="margin-right: 25px;"><a href="#">비밀번호 찾기</a></span>
			<span><a href="#">회원가입</a></span>
		</div>
	</main>

</body>
</html>