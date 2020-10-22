package com.dto;

public class User {
   private int userid;
   private String fullName;
   private String userName;
   private String userPass;
   public User() {
	
   }
  
public String getFullName() {
	return fullName;
}

public void setFullName(String fullName) {
	this.fullName = fullName;
}

public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getUserPass() {
	return userPass;
}
@Override
public String toString() {
	return  userid + " " + userName +" " + userPass ;
}
public void setUserPass(String userPass) {
	this.userPass = userPass;
}
   
}
