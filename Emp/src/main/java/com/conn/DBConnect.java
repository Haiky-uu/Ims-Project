package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static Connection conn=null;
	
	public static Connection getConn() {
	
		try {
			
			Class.forName("org.postgresql.Driver");
			conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/viper","viper","258925");
							
		}
		catch (Exception e){
			e.printStackTrace();
							
		}
		
		
		
		return conn;
		
		
		
		
	}

}
