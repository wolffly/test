package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dto.dtouser;
import mysql.mysqlconnect;

public class zhuce {
	public void insert(dtouser ds){
		mysqlconnect m = new mysqlconnect();
		PreparedStatement ps = null;
		String sql = "insert into user(user_name,pass,ro_id,e_mail,designtime) value('"+ 
			ds.getUser_name()+"','"+ ds.getPass()+"',2,'"+ ds.getE_mail()+"','"+ ds.getDesigntime()+"')";
		Connection con = m.mysqlconn();
		try {
			ps = con.prepareStatement(sql);
			ps.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
