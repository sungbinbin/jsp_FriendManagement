package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConn {

	// 오라클 DB에 접속하기 위해 필요한 정보(DB서버 주소, 아이디, 패스워드)
		private static String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		private static String id = "hr";
		private static String pwd = "1234";

		public static Connection getConnection() {
			Connection con = null;

			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection(url, id, pwd);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("드라이버를 찾을 수 없습니다");

			} catch (SQLException e) {
				System.out.println("DB서버 접속 실패!");
				e.printStackTrace();
			}

			if (con != null) {
				System.out.println("접속 성공 : " + con.toString());
			}
			
			return con;
		}

		public static void closeDB(Statement stmt, Connection con) throws SQLException {
			stmt.close();
			con.close();
		}

}
