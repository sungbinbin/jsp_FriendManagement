<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<!--num 이라는 변수에 정수를 저장하고 num이 짝수인지, 홀수 인지 ,0인지 <div>태그에 출력 하세요-->

<c:set var="num" value="3"></c:set>
<c:choose>
<c:when test="${num == 0}">
<div>0일때</div>
</c:when>
 
<c:when test="${num % 2 == 0}">
<div>짝수 일때</div>
</c:when>

<c:otherwise>
<div>홀수</div>
</c:otherwise>
</c:choose>
</body>
</html>