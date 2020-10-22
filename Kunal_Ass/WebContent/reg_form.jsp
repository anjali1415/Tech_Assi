<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="erroe_page.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1 style="text-align: center;">Register Here</h1>
     <div style="text-align: center;">
     <form action="reg.jsp">
       FullName<input type="text" name="fullName">
       <br>
       UserName<input type="text" name="userName">
       <br>
       Password<input type="password" name="userPass">
       <br> 
       <input type="submit"  value="Register">
       <br>
        <h3><a href="login.jsp">Back</a></h3>
     
     </form>
     </div>
</body>
</html>