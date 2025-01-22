<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jstlEx2_sub.jsp</h1>
	
	<div>${requestScope.msg }</div>
	
	<div>${sessionScope.msgSession }</div>

<a href="./jstlEx2_sub2.jsp" >./jstlEx2_sub2.jsp 이동</a>
</body>
</html>