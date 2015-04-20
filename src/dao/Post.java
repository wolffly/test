package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mysql.mysqlconnect;
import dto.dtopost;

public class Post {
	
	public void DeletePost(int post_id){
		
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		String sql = "delete from post where post_id =?";
		Connection con = m.mysqlconn();
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, post_id);
		    ps.executeUpdate();
		} catch (Exception e) {
			
		}
	}
	
	public void PostInsert(dtopost dt){
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		String sql = "insert into post(post_sign,posttime,user_id,title,ground_id) " +
				"value('"+ dt.getPost_sign()+"','"+ dt.getPosttime()+"','"+ dt.getUser_id()+"','"+ dt.getTitle()+"','"+dt.getGround_id()+"')";
		Connection con = m.mysqlconn();
		try {
			ps = con.prepareStatement(sql);
			ps.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List PostSelect(){
		List<dtopost> list = new ArrayList<dtopost>();
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		ResultSet rs = null;                   									
		String sql ="select title,user_name,posttime,post.post_id ,ground_name,count" +
				"(distinct post.post_id) from post,user,ground where ground.ground_id =" +
				" post.ground_id and post.user_id = user.user_id group by post_id " +
				" order by posttime desc limit 8";
		Connection con = m.mysqlconn();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				dtopost dt = new dtopost();
				dt.setTitle(rs.getString(1));
				dt.setUser_name(rs.getString(2));
				dt.setPosttime(rs.getString(3));
				dt.setPost_id(rs.getInt(4));
				dt.setGround_name(rs.getString(5));
				list.add(dt);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
