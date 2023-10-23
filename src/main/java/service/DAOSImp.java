package service;

import java.sql.*;

public class DAOSImp implements DAOS {

	private Statement stmnt;

	@Override
	public void connectDB() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/data", "root", "1234");
			stmnt = con.createStatement();
		} catch (Exception e) {

		}

	}

	@Override
	public boolean adminLog(String email, String password) {
		try {

			ResultSet result = stmnt
					.executeQuery("select * from admin where email='" + email + "' and password='" + password + "'");
			return result.next();

		} catch (Exception e) {

		}
		return false;
	}

	@Override
	public boolean userLog(String email, String password) {
		try {
			ResultSet result = stmnt.executeQuery("select * from user where email='" + email + "' and password='" + password + "'");
			return result.next();

		} catch (Exception e) {
		
		}
		return false;
	}

	@Override
	public boolean UserReg(String name, String email, String password) {
		try {
			int result = stmnt.executeUpdate("INSERT INTO user (name, email, password) VALUES ('" + name + "', '" + email + "', '" + password + "')");

			return result>0;
		} catch (Exception e) {
		
		}
		return false;
	}

	@Override
	public boolean inqSub(String name, String email, String date, String type, String description) {
		try {
			int executeUpdate = stmnt.executeUpdate("INSERT INTO inquiry (name, email, date, type,  description) VALUES ('" + name + "', '" + email + "', '" + date + "','"+type+"','"+description+"')");
			return executeUpdate>0;
		}	 catch (Exception e) {
			 	}
		return false;
	}

	@Override
	public ResultSet allInq() {
		try {
			connectDB();
			ResultSet result = stmnt.executeQuery("select * from inquiry");
			return result;
		} catch (Exception e) {
			
		}
		return null;
	}

	@Override
	public ResultSet allUsers() {
		try {
			connectDB();
			ResultSet set = stmnt.executeQuery("select * from user");
			return set;
		} catch (Exception e) {
			
		}
		return null;
	}

	@Override
	public boolean updateInquiry(String name, String email, String date, String type, String description) {
		try {
			connectDB();
			int update = stmnt.executeUpdate("update inquiry set name='"+name+"',date='"+date+"',type='"+type+"',description='"+description+"' where email='"+email+"'");
			return update>1;
		} catch (Exception e) {
			
		}
		return false;
	}

	@Override
	public boolean deleteInquiry(String email) {
		try {
			connectDB();
			int delete = stmnt.executeUpdate("delete from inquiry where email='"+email+"'");
			return delete>0;
		} catch (Exception e) {
			
		}
		return false;
	}

	@Override
	public ResultSet filterInq(String date, String type) {
		try {
			connectDB();
			ResultSet filter = stmnt.executeQuery("select * from inquiry where date='"+date+"' or type='"+type+"'");
		return filter;
		} catch (Exception e) {
		
		}
		return null;
	}

}
