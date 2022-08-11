<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail Plan</title>
	<!-- 제이쿼리 CDN -->
	   <script src="https://code.jquery.com/jquery-3.6.0.min.js"
       integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plan_detail.css">
</head>
<body id="body-pd">
<jsp:include page="../commonJSP/sideBar.jsp"/>
<!-- 각 일차에 맞게 직선긋기 -->
<div id="map" style=" width:50vw;height:100vh;position:fixed; right:0; overflow:hidden;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=202082130caf3d178b80e1c4e2687897&libraries=services,clusterer,drawing"></script>
<script type="text/javascript">
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(33.379777816446165, 126.545873556300360), // 지도의 중심좌표
	    level: 9 // 지도의 확대 레벨
	};  
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
	var linePath = [
	    new kakao.maps.LatLng(33.452344169439975, 126.56878163224233),
	    new kakao.maps.LatLng(33.452739313807456, 126.5709308145358),
	    new kakao.maps.LatLng(33.45178067090639, 126.5726886938753) 
	];

	// 지도에 표시할 선을 생성합니다
	var polyline = new kakao.maps.Polyline({
	    path: linePath, // 선을 구성하는 좌표배열 입니다
	    strokeWeight: 5, // 선의 두께 입니다
	    strokeColor: '#FFAE00', // 선의 색깔입니다
	    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
	    strokeStyle: 'solid' // 선의 스타일입니다
	});

	// 지도에 선을 표시합니다 
	polyline.setMap(map);
</script>

<c:if test="${not empty plan.day1}">
	<div class='nDayBox'>
		<span>Day1</span>
	</div>
</c:if>
<c:if test="${not empty plan.day2}">
	<div class='nDayBox'>
		Day2
	</div>
</c:if>
<c:if test="${not empty plan.day3}">
	<div class='nDayBox'>
		Day3
	</div>
</c:if>
<c:if test="${not empty plan.day4}">
	<div class='nDayBox'>
		Day4
	</div>
</c:if>
<c:if test="${not empty plan.day5}">
	<div class='nDayBox'>
		Day5
	</div>
</c:if>
<c:if test="${not empty plan.day6}">
	<div class='nDayBox'>
		Day6
	</div>
</c:if>
<c:if test="${not empty plan.day7}">
	<div class='nDayBox'>
		Day7
	</div>
</c:if>




</body>
</html>