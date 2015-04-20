package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.dtouser;

import mysql.mysqlconnect;

public class login {
	
	
	public boolean select(dtouser du){
		try {
			mysqlconnect m = new mysqlconnect();
			PreparedStatement ps = null;
			ResultSet rs = null;
			String sql = "select user_name,pass from user where user_name = '"+ du.getUser_name()+"' and pass = '"+ du.getPass()+"'";
			Connection con = m.mysqlconn();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()){
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public List selectht(dtouser ds){
		List<dtouser> list = new ArrayList<dtouser>();
		mysqlconnect m = new mysqlconnect();
		try {
			PreparedStatement ps = null;
			ResultSet rs = null;
			String sql = "select user_id,ro_id from user where user_name = '"+ ds.getUser_name()+"' and pass = '"+ ds.getPass()+"'";
			Connection con = m.mysqlconn();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				dtouser d = new dtouser();
				d.setUser_id(rs.getInt(1));
				d.setRo_id(rs.getInt(2));
				list.add(d);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
