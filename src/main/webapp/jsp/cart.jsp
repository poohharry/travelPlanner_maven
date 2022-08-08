<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/subjectList.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/schedule.css">

<!-- Date Range Picker -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
       integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<script>
	/* 날짜 차이 일수 계산 */
	const getDateDiff = (d1, d2) => {
		const date1 = new Date(d1);
		const date2 = new Date(d2);
		
		const diffDate = date1.getTime() - date2.getTime();
		
		return Math.abs(diffDate / (1000 * 60 * 60 * 24)); // 밀리세컨 * 초 * 분 * 시 = 일
	}

	$(function() {
		  $('input[name="daterange"]').daterangepicker({
		    opens: 'left'
		  }, function(start, end, label) {
		    console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
		    
		    const day = Math.ceil(getDateDiff(start, end));
		    console.log('두 날짜의 차이 : ' + day);
		    
		    let scheduleBox = "";
		    
		    for(let i = 0; i < day; i++) {
		        scheduleBox += 
		            "<div class='schedule'>" + 
		                "<span>" + (i+1) + "일 차</span>" + 
		            "</div>";
		    }

		    document.getElementById('scheduleList').innerHTML = scheduleBox;
		  });
		});
</script>

</head>
<body id="body-pd">

<jsp:include page="../commonJSP/sideBar.jsp"/>

<!-- 스케쥴 -->
<!-- 최대 기간은 7일로 제한할 예정 -->
<div style="float:left; width: 12vw; height:100vh; background-color: lightgray; margin-top:0;">
	<input type="text" name="daterange" value="08/12/2022 - 08/15/2022" style="width: 10vw; margin: 25px 0 0 1vw;"/>
	<div id="scheduleList">
		
	</div>
</div>




	<div class="listWrap">
		<c:forEach items="${itemList}" var="item">
			<a href="#">
				<div class="list">
					<div class="text">
						<span class="textTitle">${item.name}</span><br>
						<span class="badge bg-success">${item.address}</span>
						<c:choose>
							<c:when test="${empty item.tel}">
								<span>전화번호 : 없음</span><br>
							</c:when>
							<c:otherwise>
								<span>전화번호 : ${item.tel}</span><br>							
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</a>
		 </c:forEach>
	</div>

</body>
</html>