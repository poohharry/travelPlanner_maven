<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPlans</title>
<!-- 제이쿼리 CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
   integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body id="body-pd">
<jsp:include page="../commonJSP/sideBar.jsp"/>

<h1 style="text-align: center; margin: 25px 0;">Start Date를 클릭하여 상세보기</h1>
<div style="width:800px; margin: auto;">
	<table style="border:1px solid black; text-align: center; margin: auto;">
		<tr style="border:1px solid black">
			<th style="border:1px solid black; width: 100px;">Start Date</th>
			<th style="border:1px solid black; width: 100px;">End Date</th>
			<th style="border:1px solid black; width: 500px;">Day1</th>
		</tr>
		
		<c:forEach items="${planList}" var="plan">
				<tr style="border:1px solid black">
					<td style="border:1px solid black"><a href="/getPlan.do?seq=${plan.seq}">${plan.start}</a></td>
					<td style="border:1px solid black">${plan.end}</td>
					<td style="border:1px solid black">${plan.day1}</td>
				</tr>
		</c:forEach>
		
	</table>
</div>

</body>
</html>