<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script >
// 템블릿 문자열
//jsp에서 템플릿 문자열을 사용 할 때에는 반드시 역슬러시(\) 를 붙혀서 자바에는 실행되지 않도록 해야한다
let name = '둘리';
let str =`\${name} 님 `;
alert(str);
</script>
</head>
<body>
<!-- 페이지 영역(현재페이지)에서만 살아 있도록 변수선언, 값 저장 -->
<c:set var="msg" value="오늘 뭐먹지" scope="page"></c:set>

<c:out value="${msg }"></c:out> 

<h1>${msg}</h1>
<!-- 변수 삭제 -->
<c:remove var="msg"/>

</body>
</html>