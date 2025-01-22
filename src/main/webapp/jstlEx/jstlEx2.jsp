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
	<c:set var="msg" value="오늘도 치공" scope="request"></c:set> <!--setAttribute  -->
	<c:set var="msgSession" value="오늘도 치공(session)?" scope="session"></c:set>
	
	<div>${msg }</div>
	
	
	<%
		 //request.getRequestDispatcher(String path(경로)) :객체를 전달하고, 페이지를 이동한다 RequestDispatcher
		//를 반환하는 메서드 
		
		//페이지 이동은 하되, url주소는 바뀌지 않는다
		request.getRequestDispatcher("./jstlEx2_sub.jsp").forward(request, response); //forward: 전달한다
	%>
	
	<a href='./jstlEx2_sub.jsp'>jstlEx2_sub.jsp 이동</a>
</body>
</html>