<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%
    String unm="";
    Cookie arr[]=request.getCookies();
  if(arr != null){
	  for(Cookie a:arr){
	  String cname=a.getName();
	  if(cname.equals("user_name")){
		  unm=a.getValue();
		  break;
	  }
  }
 }
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

     <h1 style="text-align: center;">Login Here</h1>
     <div style="text-align: center;">
     <form action="validate.jsp"><!-- value is taken from cookies -->
       UserName<input type="text" name="userName">
       <br>
       Password<input type="password" name="userPass">
       <br> 
       <input type="submit"  value="login">
       <br>
        <h3><a href="reg_form.jsp">Sign Up</a></h3>
   
      
     </form>
     </div>
</body>
</html>