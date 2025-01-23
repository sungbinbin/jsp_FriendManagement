package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FriendDAOImpl implements FriendDAO {

	private static FriendDAOImpl instance =null;
	
	private FriendDAOImpl() {}
	
	
	public static FriendDAOImpl getInstance() {
		if(instance ==null) {
			instance = new FriendDAOImpl();
		}
		return instance;
		
	}


	@Override
	public int insertFriend(FriendDTO newFriend) throws SQLException {
System.out.println(newFriend.toString() + "을 저장하자!");
		
		Connection con = DBConn.getConnection();
		int result = 0;
		
		if (con != null) {
			String query = "insert into FRIENDS "
					+ "VALUES(seq_friendNo.nextval, ?, ?, ?)";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			
			// 매개변수 세팅
			pstmt.setString(1, newFriend.getFriendName());
			pstmt.setString(2, newFriend.getMobile());
			pstmt.setString(3, newFriend.getAddr());
			
			// 실행
			result = pstmt.executeUpdate();
		
			DBConn.closeDB(pstmt, con); // DB 닫기
		}
		
		return result;
	}

}
