package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import dto.dtoground;

import mysql.mysqlconnect;

public class LiftTitle {
	public List ltitle(){
		List<dtoground> list = new ArrayList<dtoground>();
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql ="select ground_id,ground_name from ground" ;
		Connection con = m.mysqlconn();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				dtoground dr = new dtoground();
				dr.setGround_id(rs.getInt(1));
				dr.setGround_name(rs.getString(2));
				list.add(dr);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
