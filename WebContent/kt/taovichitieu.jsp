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
String tenvi = request.getParameter("tenvi");
String tientrongvi = request.getParameter("tientrongvi");
String Mota = request.getParameter("mota");
String ngaytao = request.getParameter("ngaytaovi");
String idn =(String) session.getAttribute("MA");
String sql3 = "{CALL taovitien(?,?,?,?,?)}";
CallableStatement stmt3 = conn.prepareCall(sql3);
stmt3.setString(1,tenvi);
stmt3.setString(2, tientrongvi);
stmt3.setString(3,Mota);
stmt3.setString(4,ngaytao);
stmt3.setString(5,idn);
stmt3.executeQuery(); 
String site = "http://localhost:8080/baocaoweb/jsp/trangchu.jsp";
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site); 
%>

</body>
</html> 