<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	let isSave = ${param.isSave};
	if (isSave == true) {
		alert('친구 저장 성공!');
	} else if (isSave == false) {
		alert('친구 저장 실패!');
	}
</script>


</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="container">
	<h1>친구 목록</h1>
	</div>
</body>
</html>