package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Myconn {
	
  private static final String driver_class="com.mysql.cj.jdbc.Driver";
  private static final String url="jdbc:mysql://localhost:3306/dac2020";
  private static final String username="root";
  private static final String password="cdac";
  private Connection con;
  public Connection getConnection() throws SQLException, ClassNotFoundException {
	  if(con == null || con.isClosed())
	  {
		 Class.forName(driver_class);
		 con=DriverManager.getConnection(url,username,password);
	  }
	  return con;
  }
 
}
