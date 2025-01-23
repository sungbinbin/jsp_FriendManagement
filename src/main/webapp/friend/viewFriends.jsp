<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	let isSave = '${param.isSave}';
	if (isSave == 'true') {
		alert('친구 저장 성공!');
	} else if (isSave == 'false') {
		alert('친구 저장 실패!');
	}
</script>


</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="container">
	<h1>친구 목록</h1>
	
	<div class="friendsList">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Mobile</th>
						<th>Addr</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="friend" items="${requestScope.friendsList }">
						<tr>
							<td>${friend.friendNo }</td>
							<td>${friend.friendName }</td>
							<td>${friend.mobile }</td>
							<td>${friend.addr }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>