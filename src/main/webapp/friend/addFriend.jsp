<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
      $(function () {
        $("#friendName").blur(function () {
          isValidName();
        });
      });

      function isValid() {
        let result = false;

        // 유효성 검사를 진행 한 후
        isValidName(); // 이름이 유효하냐?

        return result;
      }

      function isValidName() {
        let result = false;

        let fName = $("#friendName").val();
        if (fName == "" || fName == null) {
          $(".errorMsg").remove();
          let errorMsg = `<div class="alert alert-danger errorMsg"><strong>에러!</strong> 이름은 반드시 입력하셔야 합니다.</div>`;
          $(errorMsg).insertAfter($("#friendName"));
          $("#friendName").focus();
        } else {
          result = true;
        }

        return result;
      }
    </script>

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
  
  
 
    <button type="Submit" class="btn btn-primary" onclick ="return isValid();">저장</button>
    <button type="reset" class="btn btn-danger">취소</button>
  
  
  
  
</form>
</div>
</body>

</html>