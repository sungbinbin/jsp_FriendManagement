package Contoller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Friend;
import model.FriendDAO;
import model.FriendDAOImpl;

@WebServlet("/getFriend.do")
public class GetFriendsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		FriendDAO dao = FriendDAOImpl.getInstance();

		try {
			List<Friend> result = dao.selectFriends();

			for (Friend f : result) {
				System.out.println(f.toString());
			}

			req.setAttribute("friendsList", result); // result(친구목록)를 "friendsList"으로 request 객체에 바인딩

			// "./friend/viewFriends.jsp"페이지로 데이터를 전송할 객체(RequestDispatcher)를 얻어옴
			RequestDispatcher rd = req.getRequestDispatcher("./friend/viewFriends.jsp");
			rd.forward(req, resp); // 데이터 전송하면서 페이지 이동

		} catch (SQLException | NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
