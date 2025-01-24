package Contoller;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import model.FriendDAOImpl;

@WebServlet("/mobileCheck.do")
public class MobileDuplicateCheckServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	

		
		String userInputMobile = req.getParameter("userInputMobile");
		System.out.println(userInputMobile);
	
		// 응답을 json으로 해주기 위해 simple-json 라이브러리를 사용 해서 구현
				JSONObject json = new JSONObject();
				try {
					if (FriendDAOImpl.getInstance().selectMobile(userInputMobile)) {
						// 중복
						json.put("isDuplicate", "true");
					} else {
						// 중복 아님
						json.put("isDuplicate", "false");
					}
				} catch (NamingException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	}

	

}
