package service;

import java.sql.*;

public interface DAOS {
	public void connectDB();
public boolean adminLog(String email, String password);
public boolean userLog(String email, String password);
public boolean UserReg(String name, String email, String password);
public boolean inqSub(String name, String email, String date, String type, String description);
public ResultSet allInq();
public ResultSet allUsers();
public boolean updateInquiry(String name, String email, String date, String type, String description);
public boolean deleteInquiry(String email);
public ResultSet filterInq(String date, String type);
}
