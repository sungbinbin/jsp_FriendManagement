package Contoller;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.FriendDAO;
import model.FriendDAOImpl;
import model.FriendDTO;


@WebServlet("/save.do") //mapping : /save.do 가 호출되면 현재의 서블릿 객체가 실행됨
public class SaveFriendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SaveFriendServlet() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		response.sendRedirect("./friend/addFriend.jsp"); // get 방식으로 호출을 할 경우에는 저장할 친구 데이터가 업기 때믄에 친구데이터를 입력 받는 페이지로 강제 이동
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post 방식으로 호출 되었을때
				System.out.println("친구가 저장됨!!!!!!!!");
				//request 응답 받아 처리 request.getParameter
				request.setCharacterEncoding("utf-8");
				String name = request.getParameter("friendName"); 
				String mobile = request.getParameter("mobile");
				String addr = request.getParameter("addr");
				
				FriendDTO newFriend = new FriendDTO(name, mobile, addr);
				System.out.println(newFriend.toString());
				
				FriendDAO dao = FriendDAOImpl.getInstance(); //싱글톤 getInstance 호출 방식
				try {
					int result = dao.insertFriend(newFriend);
					
					if (result == 1) {
						// 저장 성공
						response.sendRedirect("./friend/viewFriends.jsp?isSave=true");
					} 
				} catch (SQLException |NamingException e) {
					// DB 접속에 실패하던, 제약조건위배해서 저장 실패하던지 다 예외로 오게된다. (위 if문에서 else문 필요x)
					// 저장 실패
					e.printStackTrace();
					
					response.sendRedirect("./friend/viewFriends.jsp?isSave=false");
				}
	}

}
