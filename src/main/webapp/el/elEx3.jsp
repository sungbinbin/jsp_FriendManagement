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
	<form action="./elEx3_sub.jsp" method="get">
	좋아하는 계절 :
	<select name="favSeason">
		<option value="spr">봄</option>
		<option value="summer">여름</option>
		<option value="fall">가을</option>
		<option value="win">겨울</option>
	

	</select>
	<input type="submit" value="전송">
	</form>
</body>
</html>