package mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class mysqlconnect {

	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/bbs";

	public Connection mysqlconn() {
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
