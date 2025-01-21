package basic;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public HelloServlet() {
        super();
           }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//서버는 아무요청을 안보내면 서버는 응답을 안함 
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("get 요청됨");
		
		response.setContentType("text/html; charset=utf-8"); //응답할 문서 타입,인코딩방식 지정
		
		PrintWriter out = response.getWriter(); //연필 객체 생성해 out 안에 넣어줌 업캐스팅 시킴 
		
		
		out.print("<html>");
		out.print("<head>");
		out.print("<title>");
		out.print("웹 문서 전송");
		out.print("</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h1>hello Servlet</h1>");
		out.print("<div>아ㅣㅇ고</div>");
		out.print("</body>");
		out.print("</html>");
	
		out.flush();
		out.close();
		}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
