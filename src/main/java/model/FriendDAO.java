package model;

import java.sql.SQLException;

public interface FriendDAO {
	// 친구를 저장
	int insertFriend(FriendDTO newFriend)throws SQLException;
}
