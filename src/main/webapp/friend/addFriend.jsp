<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
      $(function () {
        // 이름을 입력하고 blur 되었을때
        $("#friendName").blur(function () {
          isValidName();
        });

        // 전화번호 입력 후 blur 되었을때
        $("#mobile").blur(function () {
          isValidMobile();
        });
      });

      function isValid() {
        let result = false;

        // 유효성 검사(이름, 전화번호)를 진행 한 후
        if (isValidName() && isValidMobile()) {
          result = true;
        }

        return result;
      }

      function isValidMobile() {
        let result = false;

        let mobile = $("#mobile").val();
        let mobileRegEXP = /^01([0|1|6|7|8|9])-([0-9]{3,4})-([0-9]{4})$/; //정규표현식

        if (!mobileRegEXP.test(mobile)) {
          outputError(
            "핸드폰 번호 형식이 아입니다!",
            $("#mobile"),
            "mobileErrorMsg"
          );
        } else {
          //번호
          $("#mobileErrorMsg").remove();
          // 중복인지 아닌지 검사

          $.ajax({
            url: "<%=request.getContextPath()%>/mobileCheck.do", // 전송 받을 데이터 url
            type: "GET", // 통신방식 (GET, POST, PUT, DELETE)
            data: {
              //서버에 전송할 데이터
              userInputMobile: mobile,
            },

            dataType: "json", // 전송 받을 데이터 타입 (text, xml, json)
            async: false,
            success: function (data) {
              // 통신이 성공했을 때 실행 될 콜백 함수
              console.log(data);
              if (data.isDuplicate == "true") {
                $("#mobile").val("");
                outputError(
                  "핸드폰 번호가 중복됩니다!",
                  $("#mobile"),
                  "mobileErrorMsg"
                );
              } else if (data.isDuplicate == "false") {
                result = true;
              }
            },
          });
        }

        return result;
      }

      function isValidName() {
        let result = false;

        let fName = $("#friendName").val();
        if (fName == "" || fName == null) {
          outputError(
            "이름은 반드시 입력 해야 합니다!",
            $("#friendName"),
            "nameErrorMsg"
          );
        } else {
          result = true;
          $("#nameErrorMsg").remove();
        }

        return result;
      }

      function outputError(msg, obj, idVal) {
        $("#" + idVal).remove();
        let errorMsg = `<div class="alert alert-danger errorMsg" id="\${idVal}"><strong>에러!</strong>\${msg}</div>`; // (\) el문은 반드시 역슬러쉬를 해야한다
        $(errorMsg).insertAfter(obj);
        $(obj).focus();
      }
    </script>
  </head>
  <body>
    <jsp:include page="../header.jsp"></jsp:include>
    <div class="container">
      <form action="<%=request.getContextPath() %>/save.do" method="post">
        <div class="mb-3 mt-3">
          <label for="friendName" class="form-label">이름</label>
          <input
            type="text"
            class="form-control"
            id="friendName"
            placeholder="Enter name"
            name="friendName"
          />
        </div>

        <div class="mb-3 mt-3">
          <label for="mobile" class="form-label">전화번호:</label>
          <input
            type="text"
            class="form-control"
            id="mobile"
            placeholder="Enter mobile"
            name="mobile"
          />
        </div>

        <div class="mb-3 mt-3">
          <label for="addr" class="form-label">주소:</label>
          <textarea
            row="5"
            class="form-control"
            id="addr"
            placeholder="Enter addr"
            name="addr"
          ></textarea>
        </div>

        <button type="Submit" class="btn btn-primary" onclick="isisValid=false">
          저장
        </button>
        <button type="reset" class="btn btn-danger">취소</button>
      </form>
    </div>
  </body>
</html>
