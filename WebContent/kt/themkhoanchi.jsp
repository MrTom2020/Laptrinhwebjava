<%@page import="java.sql.SQLException"%>
<%@page import= "java.sql.Statement"%>
<%@page import= "java.sql.DriverManager"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.Date" %>
<%@page import= "java.text.ParseException" %>
<%@page import="java.text.DateFormat" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page	import= "java.sql.CallableStatement"%>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import ="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>


</head>
<body>
 
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn;
conn =  DriverManager.getConnection("jdbc:mysql://localhost:3309/qlct","root","123456789");


//đăng ký tài khoản mới
String tenkc = request.getParameter("tenkhoanchitieu");
String tien = request.getParameter("tiena");
String ngaygd = request.getParameter("ngaygd");
String moita = request.getParameter("mota");;
String ma =(String) session.getAttribute("MA");
String sql4 = "{CALL themkhoanchishopping(?,?,?,?,?)}";
CallableStatement stmt4 = conn.prepareCall(sql4);
stmt4.setString(1,tenkc);
stmt4.setString(2, tien);
stmt4.setString(3,ngaygd);
stmt4.setString(4,moita);
stmt4.setString(5, ma);
stmt4.executeQuery(); 
String site = "http://localhost:8080/baocaoweb/jsp/trangchu.jsp";
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site); 
%>

</body>
</html> 