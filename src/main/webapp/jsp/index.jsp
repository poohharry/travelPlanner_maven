<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Main Page</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
</head>
<body id="body-pd">


<container>
<!-- 사이드바 -->
<jsp:include page="../commonJSP/sideBar.jsp"/>



    <main>

        <!-- 콘텐츠 -->
        <div class="board_wrap">


            <!-- 강의 목록 -->
            <div class="board_first">
                <table class="table table-hover">
                    <thead>
                        <tr style='colspan:"4"; background: #f5f5f5'>
                            <th><a class="aTag" href="getSubjectList.do">강의 목록<ion-icon name="add-circle-outline"></ion-icon></a></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
	                    <%-- <c:forEach items="${subjectList}" var="subject">
		                    <tr>
		                        <td>${subject.scd}</td>
		                        <td>
		                        	<a href="getLessonList.do?subjectCode=${subject.subjectCode}">
		                        		${subject.lessonName}
		                        	</a>
		                        </td>
		                    </tr>
	                    </c:forEach> --%>
					</tbody>
                </table>
            </div><!-- 강의 목록 끝 -->



            <!--   과제리스트  -->
            <div class="board_second">
                <table class="table table-hover">
                    <thead>
                    <tr style='colspan:"4"; background: #f5f5f5';>
                        <th>과제 목록</th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
	                    <%-- <c:forEach items="${taskList}" var="task">
		                    <tr>
		                        <td>${task.lessonName.lessonName}</td>
		                        <td><a href="/getTask.do?seq=${task.seq}&subjectCode=${task.subjectCode}">${task.title}</a></td>
		                        <td>
		                        	<c:set var="deadline" value="${task.taskDeadline}"/>
			                        <c:choose>
			                        	<c:when test="${empty deadline}">기한없음</c:when>
			                        	<c:otherwise>${task.taskDeadline}</c:otherwise>
			                        </c:choose>
		                        </td>
		                    </tr>
	                    </c:forEach> --%>
                    </tbody>
                </table>
            </div> <!--   과제리스트 끝 -->

            <!--  학사 공지  -->
            <div class="board_third">
                <table class="table table-hover">
                    <thead>
                    <tr style='colspan:"4"; background: #f5f5f5'>
                        <th><a class="aTag" href="getBoardList.do?table=commonnotice&subjectCode=common">
                        학사 공지<ion-icon name="add-circle-outline"></ion-icon></a></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
<%-- 	                   	<c:forEach items="${noticeList}" var="notice">
		                    <tr>
		                     <td><a href="getBoard.do?seq=${notice.seq }&table=commonnotice">${notice.title }</a></td>
		                     <td>${notice.writeDate }</td>
		                    </tr>
	                    </c:forEach> --%>
                    </tbody>
                </table>
            </div><!--  학사 공지 끝 -->

    </main><!--  콘텐츠 끝  -->
    
</container>

<!-- JS -->
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</body>
</html>