<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>SignUp</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/signUp.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
</head>
<body id="body-pd">
<jsp:include page="../commonJSP/sideBar.jsp"/>

	<main class="form-signin">
		<form action="/insertMember.do" method="post" name='loginForm' enctype="multipart/form-data">
			<h1 class="h3 mb-3 fw-normal" style="text-align:center;">Sign Up</h1>
			
			<div class="form-floating">
				<input type="text" name="id" class="form-control" id="floatingInput">
				<label for="floatingInput">ID</label>
			</div>
			<div class="form-floating">
				<input type="password" name="pw" class="form-control" id="floatingPassword" style="margin-bottom: -1px;">
				<label for="floatingInput">PW</label>
			</div>
			<div class="form-floating">
				<input type="text" name="email" class="form-control" id="floatingInput" style="margin-bottom: -1px;">
				<label for="floatingInput">Email</label>
			</div>
			<div class="form-floating">
				<input type="text" name="mobile" class="form-control" id="floatingInput" style="margin-bottom: 10px;">
				<label for="floatingInput">Mobile</label>
			</div>
			<button class="w-100 btn btn-lg btn-dark" value="login" type='submit'>Sign UP</button>
		</form>
		
		<div style="text-align: center; margin-top: 10px;">
			<span style="margin-right: 25px;"><a href="#">비밀번호 찾기</a></span>
			<span><a href="#">회원가입</a></span>
		</div>
	</main>


</body>
</html>
