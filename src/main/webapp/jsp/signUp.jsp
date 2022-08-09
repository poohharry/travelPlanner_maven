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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/postResume.css">
</head>
<body id="body-pd">
<jsp:include page="../commonJSP/sideBar.jsp"/>

	<main class="form-signin" style="margin-top: 25px;">
		<form action="/insertMember.do" method="post" name='resumeFrm' enctype="multipart/form-data">
			<h1 class="h3 mb-3 fw-normal" style="text-align:center;">Sign Up</h1>
			<h4 style="text-align: center; margin-top:25px;">profile image</h4>
			<div class="div-profileImage">				
				<div class="file-help">
					<span>파일을 끌어다 놓거나 
					이곳을 클릭하여 
					파일을 선택해 주세요.</span>
				</div>
				<input type="file" name="uploadFile" id="fileUpload" title="이력서 사진" accept="image/*">
				<div class="selected-img"><img class="resume-img" aria-hidden="true"></div>
				<div class="fileLabel" aria-hidden="true"><img src="${pageContext.request.contextPath}/images/camera.svg"><br><span>파일선택</span></div>
			</div>
			
			<div class="form-floating">
				<input type="text" name="id" class="form-control" id="floatingInput">
				<label for="floatingInput">ID</label>
			</div>
			<div class="form-floating">
				<input type="password" name="pw" class="form-control" id="floatingPassword" style="margin-bottom: -1px;">
				<label for="floatingInput">PW</label>
			</div>
			<div class="form-floating">
				<input type="text" name="name" class="form-control" id="floatingInput" style="margin-bottom: -1px;">
				<label for="floatingInput">Name</label>
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
	</main>

<script defer src="${pageContext.request.contextPath}/js/postResume.js"></script>
</body>
</html>
