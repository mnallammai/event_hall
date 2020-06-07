<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>demo Regjsp</title>
<style>
    body{
        text-align: center;
        font-family: 'lato','sans-serif';
         background-color: darkblue;
         color:white;
         transform: norepeat;
         background-size: cover;
    background-position: center;
    background-attachment:fixed;
    }
    h1{
    position:absolute;    
    width: 1140px;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    }
    a{
        top: 60%;
    left: 50%;
    transform: translate(-50%, -50%);
    position: absolute;
    color:white;
    font-size:30px;
    }
</style>

</head>
<body bgcolor="lightgreen">
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String user=request.getParameter("uname"); 
session.putValue("u",user); 
String pwd=request.getParameter("pwd"); 
String fname=request.getParameter("name"); 

String email=request.getParameter("email"); 
String dob=request.getParameter("dob");
String pob=request.getParameter("place");
Class.forName("org.postgresql.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/postgres","postgres","nallu005"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into user3 values ('"+user+"','"+pwd+"','"+dob+"','"+fname+"','"+email+"')"); 

out.println("<h1><center><b>YOUR HALL IS REGISTERED SUCCESSFULLY! DEAR "+fname+" ON "+dob+" at "+pob+" !!</b></h1><center>"); 
con.close();

%>

<a href="index.html">Home</a>
</body>
</html>