package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBConn {

	// 오라클 DB에 접속하기 위해 필요한 정보(DB서버 주소, 아이디, 패스워드)
		private static String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		private static String id = "hr";
		private static String pwd = "1234";

		public static Connection getConnection() throws NamingException, SQLException {
			Connection con = null;

//			try {
//				Class.forName("oracle.jdbc.driver.OracleDriver");
//				con = DriverManager.getConnection(url, id, pwd);
//			} catch (ClassNotFoundException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//				System.out.println("드라이버를 찾을 수 없습니다");
//
//			} catch (SQLException e) {
//				System.out.println("DB서버 접속 실패!");
//				e.printStackTrace();
//			}
//
//			if (con != null) {
//				System.out.println("접속 성공 : " + con.toString());
//			}
//			
//			Context 객체 생성 
			Context initContext = new InitialContext();  //업캐스팅
			Context envContext  = (Context)initContext.lookup("java:/comp/env"); //comtext.xml 파일 읽기 다운 캐스팅 해서 만들어짐
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle"); //오라클 DBCP를 찾아 
			con = ds.getConnection(); //COnnection pool Connection 객체 얻어옴
			
			
			
			
			
			return con;
		}

		public static void closeDB(ResultSet rs, Statement stmt, Connection con) throws SQLException {
			rs.close();
			stmt.close();
			con.close();
		}
		
		public static void closeDB(Statement stmt, Connection con) throws SQLException {
			stmt.close();
			con.close();
		}

}
