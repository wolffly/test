package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mysql.mysqlconnect;
import dto.dtofatielistone;
import dto.dtoreply;

public class displayreply {
	public List disreply(dtofatielistone dp) {
		List<dtoreply> list = new ArrayList<dtoreply>();
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select reply.user_id,user_name,reply_sign,replytime from reply,user where post_id = '"
				+ dp.getPost_id() + "' and user.user_id = reply.user_id ";
		Connection con = m.mysqlconn();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				dtoreply dy = new dtoreply();
				dy.setUser_id(rs.getInt(1));
				dy.setUser_name(rs.getString(2));
				dy.setReply_sign(rs.getString(3));
				dy.setReplytime(rs.getString(4));
				list.add(dy);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
