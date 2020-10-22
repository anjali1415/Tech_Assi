<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ include file="cacheControl.jsp" %>
 <%@ include file="header.jsp" %>
  
  <!-- now without login if user come over here then new object will be creaated
  and not able to get the data directly without login -->
  <jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>
   <!--means if user are coming with proper login then user object is already 
   there which has userid name and all so means some id is there-->
   <%
       if(user != null && user.getUserid() > 0){
   %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
		<%
		String nm=user.getFullName();
		System.out.print("in home");
		System.out.print(user.getFullName());
		%>
		
	  <h1>Welcome <%=" " +nm%></h1>
</body>
</html>
<%}
  else{
	 response.sendRedirect("login.jsp"); 
  }
%>