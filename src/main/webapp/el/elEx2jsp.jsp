<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL에서 사용가능한 연산자</title>
</head>
<body>
<div>\${5+2 } : ${5+2 }</div> <!-- \이스케이브 문자열 -->
<div>${5 div 2 }</div>
<div>\${5 mod 2 } : ${5 % 2 }</div>
<div>\${5 gt 2 } : ${5 > 2 }</div>
<div>\${5 le 2 } : ${5 <= 2 }</div>
<div>\${5 le 2 or 3 lt 4 } : ${5 le 2 or 3 lt 4 }</div>
<c:set var = "input" value=""/>
<div>\${empty input } : ${empty input }</div>
<c:set var = "input" value="abc"/>
<div>\${empty input } : ${empty input }</div>

</body>
</html>