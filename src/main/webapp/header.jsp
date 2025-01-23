<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
   <c:set var="contextPath" value="<%=request.getContextPath() %>"></c:set>
   <nav class="navbar navbar-expand-sm bg-light navbar-light">
      <div class="container-fluid">
         <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link active" href="${contextPath }/index.jsp">친구관리</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="${contextPath }/friend/addFriend.jsp">친구저장</a></li>
            <li class="nav-item"><a class="nav-link" href="${contextPath }/getFriend.do">친구목록</a></li>
            <li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
            </li>
         </ul>
      </div>
   </nav>
</body>
</html>