package dto;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import mysql.mysqlconnect;

public class dtouser {

	private int user_id ;
	private String user_name;
	private String pass;
	private int ro_id;
	private String sex;
	private String e_mail;
	private String designtime;
	private String qpass;
	private String newpass;
	private String qnewpass;
	
	public String getQnewpass() {
		return qnewpass;
	}
	public void setQnewpass(String qnewpass) {
		this.qnewpass = qnewpass;
	}
	public String getNewpass() {
		return newpass;
	}
	public void setNewpass(String newpass) {
		this.newpass = newpass;
	}
	public String getQpass() {
		return qpass;
	}
	public void setQpass(String qpass) {
		this.qpass = qpass;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int userId) {
		user_id = userId;
	}

	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		this.user_name = userName;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getRo_id() {
		return ro_id;
	}
	public void setRo_id(int roId) {
		this.ro_id = roId;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String eMail) {
		this.e_mail = eMail;
	}
	public String getDesigntime() {
		return designtime;
	}
	public void setDesigntime(String designtime) {
		this.designtime = designtime;
	}
}
