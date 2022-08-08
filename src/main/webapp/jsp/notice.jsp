<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice.css">
</head>
<body id="body-pd">


  <div class="tableWrap">
    <table class="tight">
      <thead><tr>
        <th style="width:5%; flex-basis: 5%;" >번호</th>
        <th style="width:55%; flex-basis: 55%;">제목</th>
        <th style="width:15%; flex-basis: 20%">작성자</th>
        <th style="width:15%; flex-basis: 20%;">등록일</th>
      </tr></thead>
      <tbody>
      <c:forEach items="${boardList}" var="board">
      <tr>
        <td>${board.seq}</td>
        <td><a href="getBoard.do?seq=${board.seq}&table=commonNotice">${board.title}</a></td>
        <td>${board.writer}</td>
        <td>${board.writeDate}</td>
        
      </tr>
      </c:forEach>
      
      </tbody>
    </table>
  </div>
</body>
</html>