package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.dtopost;

import mysql.mysqlconnect;

public class fatielist {
	
	
	public List selectall(){
		List<dtopost> li = new ArrayList<dtopost>();
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		ResultSet rs = null;                   									
		String sql ="select title,user_name,posttime,post_id from post,user where post.user_id = User.user_id" ;
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
				li.add(dt);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return li;
	
	}

	public List fatielist(dtopost dp){
		List<dtopost> list = new ArrayList<dtopost>();
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		ResultSet rs = null;                   									
		String sql ="select title,user_name,posttime,post_id from post,user where ground_id='"+dp.getPost_id() +"' and post.user_id = User.user_id" ;
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
				list.add(dt);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
