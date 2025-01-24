package model;

import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

public interface FriendDAO {
	// 친구를 저장 하는 추상메서드
	int insertFriend(FriendDTO newFriend)throws SQLException, NamingException;
	
	//친구 목록 가져오기
	List<Friend> selectFriends() throws SQLException, NamingException;
	
	// 전화번호가 중복인지 아닌지 검사 (중복 : true, 중복x : false)
		boolean selectMobile(String userInputMobile) throws NamingException, SQLException;
	
}
