<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="container">



<form action="<%=request.getContextPath() %>/save.do" method="post">
  <div class="mb-3 mt-3">
    <label for="friendName" class="form-label">이름</label>
    <input type="text" class="form-control" id="friendName" placeholder="Enter name" name="friendName">
  </div>	



  <div class="mb-3 mt-3">
    <label for="mobile" class="form-label">전화번호:</label>
    <input type="text" class="form-control" id="mobile" placeholder="Enter mobile" name="mobile">
  </div>
  
  
  <div class="mb-3 mt-3">
    <label for="addr" class="form-label">주소:</label>
    <textarea row="5" class="form-control" id="addr" placeholder="Enter addr" name="addr"></textarea>
  </div>
  
  
 
    <button type="Submit" class="btn btn-primary">저장</button>
    <button type="reset" class="btn btn-danger">취소</button>
  
  
  
  
</form>
</div>
</body>

</html>