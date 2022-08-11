<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyInfo</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/myPageForDisability.css">
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"
       integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body id="body-pd">
<jsp:include page="../commonJSP/sideBar.jsp"/>
	<main>		
		<section class="section-table" style="width:1000px; margin:auto;">
			<div class="title-div"">
				<img src="${pageContext.request.contextPath}/images/account.svg" class="title-img">
				<p>MyInfo</p>
			</div>
			<table>
				<thead>
					<tr class="tr1">
						<th>제목</th>
						<th>내용</th>
					</tr>
				</thead>
			
				<tbody>
					<tr>
						<th>Name</th>
						<td>${member.name}</td>
					</tr>
					<tr>
						<th>Id</th>
						<td>${member.id}</td>
					</tr>
					<tr>
						<th>Mobile</th>
						<td>${member.mobile}</td>
					</tr>
					<tr>
						<th>Email</th>
						<td>${member.email}</td>
					</tr>
					<tr>
						<th>SignUp Date</th>
						<td>${member.signUpDate}</td>
					</tr>
				</tbody>
			</table>
			
			<div class="div-sideNav">
				<aside id="sideNav" role="navigation">
					<h2 style="text-align: center;">menu</h2>
					<ul>
						<li><a href="/jsp/myInfo.jsp" >
							<img src="/images/account.svg">
							myInfo</a></li>
						<li><a href="/getPlanList.do" >
							<img src="/images/write_res.svg">
							myPlans</a></li>
						<li><a href="myResume.jsp" >
							<img src="/images/resume.svg">
							myPosts</a></li>
						<li><a href="pickedList.jsp" >
							<img src="image/bookmark_on.svg">
							관심 채용공고</a></li>
						<li><a href="applyList.jsp" >
							<img src="image/list.svg">
							기업지원 현황</a></li>
					</ul>
				</aside>
			</div> 
		</section>
	</main>
</body>
</html>