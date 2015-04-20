package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import mysql.mysqlconnect;
import dto.dtouser;

public class zhuceusercheck {

	public boolean selectuser(dtouser du) {
		try {
			mysqlconnect m = new mysqlconnect();
			PreparedStatement ps = null;
			ResultSet rs = null;
			String sql = "select user_name from user where user_name = '"
					+ du.getUser_name() +"'";
			Connection con = m.mysqlconn();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}