package dto;

public class dtopost {

	private int post_id;
	private String post_sign;
	private String posttime;
	private int user_id;
	private String title;
	private int ground_id;
	private String user_name;
	private String ground_name;
	
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int postId) {
		post_id = postId;
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
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int userId) {
		user_id = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getGround_id() {
		return ground_id;
	}
	public void setGround_id(int groundId) {
		ground_id = groundId;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}
	public String getGround_name() {
		return ground_name;
	}
	public void setGround_name(String groundName) {
		ground_name = groundName;
	}
}
