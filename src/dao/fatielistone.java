package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import mysql.mysqlconnect;

import dto.dtofatielistone;
import dto.dtopost;

public class fatielistone {

	public List selsectpost(dtofatielistone dp){
		List<dtofatielistone> list = new ArrayList<dtofatielistone>();
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql ="select post_id,user_name,post_sign,posttime,title,user.user_id from post,user where post_id = '"+ dp.getPost_id()+"' and user.user_id = post.user_id";
		Connection con = m.mysqlconn();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				dtofatielistone dl = new dtofatielistone();
				dl.setPost_id(rs.getInt(1));
				dl.setUser_name(rs.getString(2));
				dl.setPost_sign(rs.getString(3));
				dl.setPosttime(rs.getString(4));
				dl.setTitle(rs.getString(5));
				dl.setUser_id(rs.getInt(6));
				list.add(dl);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
