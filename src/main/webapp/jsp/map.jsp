<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Planner</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/planner.css">
</head>
<body id="body-pd">
<jsp:include page="../commonJSP/sideBar.jsp"/>
	
	<div class="map_wrap">
		<!-- <h2>카카오 맵 API</h2> -->
		<div id="map" style="width:84vw;height:100vh;position:relative;overflow:hidden;"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=202082130caf3d178b80e1c4e2687897&libraries=services,clusterer,drawing"></script>
		<div id="menu_wrap" class="bg_white">
	        <div class="option">
	            <div>
	                <form onsubmit="searchPlaces(); return false;">
	                    키워드 : <input type="text" value="" id="keyword" size="15"> 
	                    <button type="submit">검색하기</button> 
	                </form>
	            </div>
	        </div>
	        <hr>
	        <ul id="placesList"></ul>
        	<div id="pagination"></div>
    	</div>
	</div>
	
<script src="${pageContext.request.contextPath}/js/planner.js"></script>
</body>
</html>