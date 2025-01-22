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
	<%
	 String arr = {"봄","여름","가을","겨울"};
	
	pageContext.setAttribute("season", arr);
	%>
	<ul>
	 <c:forEach var="s" items="${season}">
		<li>${s }</li>	 
	 </c:forEach>
	
	</ul>
</body>
</html>