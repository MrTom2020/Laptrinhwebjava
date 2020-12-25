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
String hoten = request.getParameter("tenhienthi");
String tendangnhap = request.getParameter("tendangnhap");
String matkhau = request.getParameter("password");
String xacnhan = request.getParameter("password1");;
String diachi = request.getParameter("diachi");
String gioitinh = request.getParameter("gender");
String ngay = request.getParameter("ngaysinh");
String sdt = request.getParameter("sdt");
String sql2 = "{CALL dangkytaikhoan(?,?,?,?,?,?,?,?)}";
CallableStatement stmt2 = conn.prepareCall(sql2);
stmt2.setString(1,hoten);
stmt2.setString(2, tendangnhap);
stmt2.setString(3, matkhau);
stmt2.setString(4,(ngay));
stmt2.setString(5, sdt);
stmt2.setString(6, diachi);
stmt2.setString(7, gioitinh);
stmt2.setString(8, xacnhan);
stmt2.executeQuery(); 
String site = "http://localhost:8080/baocaoweb/jsp/trangchu.jsp";
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site); 
%>

</body>
</html> 