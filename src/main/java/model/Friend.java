package model;

public class Friend {
	private int friendNO;
	private String friendName;
	private String mobile;
	private String addr;
	public Friend(int friendNO, String friendName, String mobile, String addr) {
		super();
		this.friendNO = friendNO;
		this.friendName = friendName;
		this.mobile = mobile;
		this.addr = addr;
	}
	public String getFriendName() {
		return friendName;
	}
	public void setFriendName(String friendName) {
		this.friendName = friendName;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public int getFriendNO() {
		return friendNO;
	}
	@Override
	public String toString() {
		return "Friend [friendNO=" + friendNO + ", friendName=" + friendName + ", mobile=" + mobile + ", addr=" + addr
				+ "]";
	}




}
