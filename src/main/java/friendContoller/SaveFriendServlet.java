package friendContoller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/save.do") //mapping : /save.do 가 호출되면 현재의 서블릿 객체가 실행됨
public class SaveFriendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SaveFriendServlet() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		response.sendRedirect("./freend/addFriend.jsp"); // get 방식으로 호출을 할 경우에는 저장할 친구 데이터가 업기 때믄에 친구데이터를 입력 받는 페이지로 강제 이동
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post 방식 호출됨
		System.out.println("친구저장");
		doGet(request, response);
		
		
		
	    // 응답 데이터의 인코딩 설정
		request.setCharacterEncoding("utf-8"); // HTTP 요청 또는 HTTP 응답의 문자 인코딩(Charset)을 설정하는 메서드
		// 클라이언트가 보낸 데이터 읽기
		String name =request.getParameter("friendName");
		String mobile =request.getParameter("mobile");
		String addr =request.getParameter("addr");

		System.out.println(name+","+mobile+","+addr);
	}

}
