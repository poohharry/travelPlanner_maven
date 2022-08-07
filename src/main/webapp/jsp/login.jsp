<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!--  부트스트랩 CDN  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
	<!-- 제이쿼리 CDN -->
	   <script src="https://code.jquery.com/jquery-3.6.0.min.js"
       integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- IONICONS -->
    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
   	
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
	
<!-- JS -->
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>