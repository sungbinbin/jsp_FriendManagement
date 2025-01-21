<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	//alert("!");
</script>
<style>
	h1 {
		background-color: yellow;
	}
</style>
</head>
<body>
	<h1>Hello, JSP</h1>

	<%
		// java 코드를 작성할 수 있는 영역
		// i 값이 짝수이면 빨간색으로 출력, 홀수 이면 파란색 글씨로 출력
		int i = 5;
	
		if (i % 2 == 0) {
			// 짝수
	%>
			<div style="color : red;"><%=i %></div>
	<% 
		} else {
			// 홀수	
	%>
			<div style="color : blue;"><%=i %></div>
			
	<%
		}
	
	%>
</body>
</html>