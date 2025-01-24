package Contoller;

import java.io.IOException;
import java.io.PrintWriter;
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
	
		// 응답(response) 타입을 json으로  "Mime-type"에 정의 되어 있는 contentType으로
				resp.setContentType("application/json; charset=utf-8");
				
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
				
				String jsonStr = json.toJSONString();  // json 문자열로 변환
				System.out.println(jsonStr);
				
				PrintWriter out = resp.getWriter();
				out.print(jsonStr);  // 출력 스트림을 통해 문자열 출력(전송)
				out.flush();
				out.close();
	
	}
	

	

}
