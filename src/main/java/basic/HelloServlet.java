package basic;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


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
		out.print("<div>타자 연습 하자</div>");
		out.print("</body>");
		out.print("</html>");
	
		out.flush();
		out.close();
		}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
