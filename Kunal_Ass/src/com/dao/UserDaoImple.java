package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

import com.conn.Myconn;
import com.dto.User;

public class UserDaoImple implements UserDao{

	private Myconn myConn;
	
	public UserDaoImple() {
		myConn =new Myconn();
	}

	@Override
	public int insertuser(User user) {
		int i=0;
		try {
			Connection con=myConn.getConnection();
			PreparedStatement s=con.prepareStatement("insert into user (full_name,user_name,user_pass) values(?,?,?)");
			 s.setString(1,user.getFullName());
			s.setString(2,user.getUserName());
			 s.setString(3, user.getUserPass());
			 i=s.executeUpdate();
			 s.close();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return i;
		
	}

	@Override
	public boolean login(User user) {
		boolean flag=false;
		try {
			Connection con=myConn.getConnection();
			PreparedStatement s=con.prepareStatement("select *from user where user_name=? and user_pass=?");
		    s.setString(1, user.getUserName());
		    s.setString(2,user.getUserPass());
		    ResultSet rs=s.executeQuery();
		    if(rs.next())
		    {
		    	user.setFullName(rs.getString("full_name"));
		    	user.setUserid(rs.getInt("user_id"));
		    	
		    	flag=true;
		    }
		    s.close();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return flag;
	}


}
