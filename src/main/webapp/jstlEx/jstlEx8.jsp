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

	String mobile = "010-1234-5678";

	pageContext.setAttribute("mobile", mobile);
%>
	
	<%
	pageContext.setAttribute("tmp", 0);%>
	<c:set var="tmp" value="0"/>
	<c:forTokens var="token" items="${mobile }" delims="-">
<c:choose>
<c:when test="${tmp ==1 }">
	<span>****</span>
</c:when>
	<c:otherwise>
	<span>${token }</span>
	</c:otherwise>
	
	
	
</c:choose>
	<% pageContext.setAttribute("tmp",(int)pageContext.getAttribute("tmp")+1);%>
	
	
	</c:forTokens>
</body>
</html>