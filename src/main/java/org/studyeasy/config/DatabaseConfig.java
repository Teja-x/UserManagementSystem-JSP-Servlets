package org.studyeasy.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConfig {
	public static Connection getConnection() {
		String dbURL = "jdbc:mysql://localhost:3306/dbconnect?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
		String dbUsername  = "root";
		String dbPassword = "mysql@1004";
		//Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbUsername, dbPassword);
		}catch (Exception e) {
		      throw new RuntimeException("Failed to obtain DB connection", e);
	    }
//		catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} 
		//return connection;
	}
}
