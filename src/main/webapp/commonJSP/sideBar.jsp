<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<!-- 사이드바 -->
<div class="l-navbar" id="navbar">
    <nav class="nav">
        <div>
            <div class="nav__brand">
                <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                <span class="nav__logo">사이드 메뉴</span>
            </div>
            <div class="nav__list">
                <a href="#" id='clickHome' name='clickHome' class="nav__link">
                    <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">홈으로</span>
                </a>
                <a href="#" id='clickSubject' name='clicksubject' class="nav__link">
                    <ion-icon name="chatbubbles-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">과목</span>
                </a>
                <a href="#" id='clickMyInfo' name='clickMyInfo' class="nav__link">
                    <ion-icon name="ellipsis-horizontal-sharp" class="nav__icon"></ion-icon>
                    <span class="nav_name">내 정보</span>
                </a>
                <a href="#" name='clickNotice' class="nav__link">
                    <ion-icon name="book-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">학사공지</span>
                </a>
                <a href="#" id='clickexam' name='clickexam' class="nav__link">
                    <ion-icon name="book-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">시험</span>
                </a>
                <a href="/logout.do" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">로그아웃</span>
                </a>
            </div>
        </div>
    </nav>
</div> <!-- 사이드바 끝 -->
        

