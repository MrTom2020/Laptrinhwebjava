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
String gioitinh = request.getParameter("sex");
String hotendk = request.getParameter("tentkdk");
String hotenhienthi = request.getParameter("tentkht");
String SDT = request.getParameter("SDTDK");
String DIACHI = request.getParameter("DIACHIDK");
String NGAYSINH  = request.getParameter("ngaysinhtkdk");
String MATKHAU = request.getParameter("mktkdk");
String XACNHAN = request.getParameter("mktkdkxn");
String idnguoiql =(String) session.getAttribute("MA");
String sql2 = "{CALL themtaikhoanduocquanly(?,?,?,?,?,?,?,?,?)}";
CallableStatement stmt2 = conn.prepareCall(sql2);
stmt2.setString(1,hotenhienthi);
stmt2.setString(2, hotendk);
stmt2.setString(3, MATKHAU);
stmt2.setString(4,NGAYSINH);
stmt2.setString(5, SDT);
stmt2.setString(6, DIACHI);
stmt2.setString(7, gioitinh);
stmt2.setString(8, XACNHAN);
stmt2.setString(9, idnguoiql);
stmt2.executeQuery(); 
String site = "http://localhost:8080/baocaoweb/jsp/trangchu.jsp";
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site); 
%>

</body>
</html> 