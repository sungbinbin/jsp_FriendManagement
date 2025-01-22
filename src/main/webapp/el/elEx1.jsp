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

<div>정수 : ${10  }</div>
<!-- 속ㅇ성에 잇는 값 또한 출력 가능 -->
<div>정수 : ${i  }</div>
<div>실수 : ${3.14  }</div>
<div>문자열 : ${"타자 열심히 하자"  }</div>
<div>논리형 : ${true  }</div>
<div>null : ${null  }</div>
<!-- null 은 아무것도 안뜸 -->
</body>
</html>