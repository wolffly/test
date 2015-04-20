package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dto.dtoreply;

import mysql.mysqlconnect;

public class reply {

	public void insertreply(dtoreply dr){
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		String sql = "insert into reply(user_id,post_id,reply_sign,replytime) value('"+ dr.getUser_id()+"','"+ dr.getPost_id()+"','"+ dr.getReply_sign()+"','"+ dr.getReplytime()+"')";
		Connection con = m.mysqlconn();
		try {
			ps = con.prepareStatement(sql);
			ps.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void DeleteReply  (int post_id){
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		String sql= "delete from reply where post_id =?";
		Connection con = m.mysqlconn();
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, post_id);
		    ps.executeUpdate();
		} catch (Exception e) {
			
		}
		
	}


	
	
}
