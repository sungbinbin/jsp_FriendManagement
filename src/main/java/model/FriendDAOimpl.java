package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

public class FriendDAOImpl implements FriendDAO {

	private static FriendDAOImpl instance = null;

	private FriendDAOImpl() {
	}

	public static FriendDAOImpl getInstance() {
		if (instance == null) {
			instance = new FriendDAOImpl();
		}
		return instance;

	}

	@Override
	public int insertFriend(FriendDTO newFriend) throws SQLException, NamingException {
		System.out.println(newFriend.toString() + "을 저장하자!");

		Connection con = DBConn.getConnection();
		int result = 0;

		if (con != null) {
			String query = "insert into FRIENDS " + "VALUES(seq_friendNo.nextval, ?, ?, ?)";

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

	@Override
	public List<Friend> selectFriends() throws SQLException, NamingException {
		Connection con = DBConn.getConnection();

		List<Friend> result = new ArrayList<Friend>(); //list에 result 값을 받는다 
		if (con != null) {
			String query = "select * from FRIENDS ORDER BY FRIENDNO DESC";

			PreparedStatement pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				// 친구 객체를 생성하고, ArrayList<Friend>에 추가
				result.add(new Friend(rs.getInt("FRIENDNO"), rs.getString("FRIENDNAME"), rs.getString("MOBILE"),
						rs.getString("ADDR")));
			}

			DBConn.closeDB(rs, pstmt, con);

		}
		return result;

	}

	@Override
	public boolean selectMobile(String userInputMobile) throws NamingException, SQLException {
		Connection con = DBConn.getConnection();
		boolean result = false;
		
		if (con != null) {
			String query = "select mobile from FRIENDS where MOBILE = ?";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, userInputMobile);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result = true;
			}
			
			DBConn.closeDB(rs, pstmt, con);
			
		}
		
		return result;
	
	}

}
