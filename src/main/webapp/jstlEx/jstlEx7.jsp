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
	<c:forEach var="i" begin="0" end="9">
	
	<div>${i }</div>
	</c:forEach>
	
	
	<!-- 구구단 출력 -->

	
	<c:forEach var="dan" begin="1" end="9">
	<c:forEach var="i" begin="1" end="9">
	${dan }*${i }=${dan*i }
	
	</c:forEach>
	
		
	
	</c:forEach>
</body>
</html>