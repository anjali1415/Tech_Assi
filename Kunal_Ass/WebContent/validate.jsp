<%@page import="com.service.UserServiceImple"%>
<%@page import="com.service.UserService"%>
<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>

<%
  UserService userService=new UserServiceImple();
  boolean b=userService.login(user);
  if(b == true)
  {
	response.sendRedirect("home.jsp");  
  }
  else{
	  Cookie cookie=new Cookie("user_name",user.getUserName());
	   cookie.setMaxAge(60*60*36);
	  response.addCookie(cookie);
	  //means it will go to login.jsp and as well as show that msg
	  response.sendRedirect("login.jsp");
  }

%>