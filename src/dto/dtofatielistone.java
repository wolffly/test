package dto;

public class dtofatielistone {
	
	private int post_id;
	private String user_name;
	private String post_sign;
	private String posttime;
	private String title;
	private int user_id;
	
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int postId) {
		post_id = postId;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}
	public String getPost_sign() {
		return post_sign;
	}
	public void setPost_sign(String postSign) {
		post_sign = postSign;
	}
	public String getPosttime() {
		return posttime;
	}
	public void setPosttime(String posttime) {
		this.posttime = posttime;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int userId) {
		user_id = userId;
	}
}
