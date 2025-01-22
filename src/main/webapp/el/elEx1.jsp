<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el 표현 방식 1</title>

</head>
<body>

	
<% //스크립트릿 : jsp 에서 자바 문법을 사용 할떄
	out.print("<h1>el 방식</h1>"); //out 내장 객체로 출력
	
	
%>

<%="<div>요렇게 표현</div>" %>

<div>정수 : ${i  }</div>
</body>
</html>