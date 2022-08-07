<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
	<!-- 제이쿼리 CDN -->
	   <script src="https://code.jquery.com/jquery-3.6.0.min.js"
       integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
       
	<script type="module" src="https://unpkg.com/ionicons@5.2.3/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule="" src="https://unpkg.com/ionicons@5.2.3/dist/ionicons/ionicons.js"></script>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
</head>


<!-- 사이드바 -->
<div class="l-navbar" id="navbar">
    <nav class="nav">
        <div>
            <div class="nav__brand">
                <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                
                <c:choose>
                	<c:when test="${empty member}">
                		<span>
	                		<a href="/login.do" style="color:white; margin-right: 10px;">login</a>
	                		<a href="./jsp/signUp.jsp" style="color:white;">signUp</a>
                		</span>
                	</c:when>
                	<c:otherwise>
                		<span class="nav__logo">${member.name} 님</span>
                	</c:otherwise>
                </c:choose>
                
            </div>
            <div class="nav__list">
                <a href="/home.do" id='clickHome' name='clickHome' class="nav__link">
                    <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">main</span>
                </a>
                <a href="/jsp/planner.jsp" id='clickSubject' name='clicksubject' class="nav__link">
                    <ion-icon name="calendar-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">planner</span>
                </a>
                <a href="#" name='clickNotice' class="nav__link">
                    <ion-icon name="chatbubbles-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">SNS</span>
                </a>
                <a href="#" id='clickexam' name='clickexam' class="nav__link">
                    <ion-icon name="clipboard-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">notice</span>
                </a>
                
                <!-- 로그인 상태에서만 보이도록 설정 -->
               	<c:if test="${not empty member}">
               		<a href="#" id='clickMyInfo' name='clickMyInfo' class="nav__link">
	                    <ion-icon name="ellipsis-horizontal-sharp" class="nav__icon"></ion-icon>
	                    <span class="nav_name">myInfo</span>
	                </a>
               		<a href="#" class="nav__link">
	                    <ion-icon name="cart-outline" class="nav__icon"></ion-icon>
	                    <span class="nav_name">cart</span>
	                </a>
	                <a href="/logout.do" class="nav__link">
	                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
	                    <span class="nav_name">logout</span>
	                </a>
               	</c:if>
                
            </div>
        </div>
    </nav>
</div> <!-- 사이드바 끝 -->

<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        

