package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dto.dtopost;

import mysql.mysqlconnect;

public class postinsert {

	public void insertp(dtopost dt){
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
}
