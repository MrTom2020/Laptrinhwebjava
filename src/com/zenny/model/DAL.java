package com.zenny.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DAL 
{

	 static String data = "jdbc:mysql://localhost:3309/qlct";
	static String USER = "root";
	static String password = "123456789";
	public static void main(String[] args)
	{
		  try {
	            // connnect to database 'testdb'
	            Connection conn = getConnection(data,USER,password);
	            // crate statement
	            Statement stmt = conn.createStatement();
	            // get data from table 'student'
	            ResultSet rs = stmt.executeQuery("select * from dangnhap");
	            // show data
	            while (rs.next()) {
	                System.out.println(rs.getInt(1) + "  " + rs.getString(2) 
	                        + "  " + rs.getString(3));
	            }
	            // close connection
	            conn.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
		
	}
	public static Connection getConnection(String dbURL, String userName, 
            String password) {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, userName, password);
            System.out.println("connect successfully!");
        } catch (Exception ex) {
            System.out.println("connect failure!");
            ex.printStackTrace();
        }
        return conn;
    }
}
