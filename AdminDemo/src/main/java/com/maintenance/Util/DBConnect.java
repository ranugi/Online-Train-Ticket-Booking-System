package com.maintenance.Util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	//for getting all db connections from here
	
	private static String url = "jdbc:mysql://localhost:3306/maintenance";  //import drive
	private static String username = "root";
	private static String password = "Ranugi@123";
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
		}
		catch(Exception e) {                                                        //exceptional handling
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
		
	}
}
