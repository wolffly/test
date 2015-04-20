package dto;

public class dtoreply {
	
	private int reply_id;
	private String user_name;
	private String reply_sign;
	private String replytime;
	private int user_id;
	private int post_id;
	
	
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int postId) {
		post_id = postId;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int userId) {
		user_id = userId;
	}
	public int getReply_id() {
		return reply_id;
	}
	public void setReply_id(int replyId) {
		reply_id = replyId;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}
	public String getReply_sign() {
		return reply_sign;
	}
	public void setReply_sign(String replySign) {
		reply_sign = replySign;
	}
	public String getReplytime() {
		return replytime;
	}
	public void setReplytime(String replytime) {
		this.replytime = replytime;
	}
}
