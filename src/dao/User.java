package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import mysql.mysqlconnect;
import dto.dtopost;
import dto.dtouser;

public class User {
	public List<dtouser> select(){
		List<dtouser> list = new ArrayList<dtouser>();
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		ResultSet rs = null;  
		String sql = "select user_id,user_name,designtime from user";
		Connection con = m.mysqlconn();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				dtouser du = new dtouser();
				du.setUser_id(rs.getInt(1));
				du.setUser_name(rs.getString(2));
				du.setDesigntime(rs.getString(3));
				list.add(du);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public void Update(String name,String newpass){
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		String sql = "update user set pass = ? where user_name = ?";
		Connection con = m.mysqlconn();
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, newpass);
			ps.setString(2, name);
		    ps.execute();
		} catch (Exception e) {
			
		}
		
	}

	public void delete(int id){
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		String sql = "delete from user where user_id =?";
		Connection con = m.mysqlconn();
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, id);
		    ps.executeUpdate();
		} catch (Exception e) {
			
		}
		
	}
	
}
