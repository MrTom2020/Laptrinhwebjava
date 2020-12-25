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

String idn =(String) session.getAttribute("MA");
String sql3 = "{CALL danhsachtaikhoandql(?)}";
CallableStatement stmt3 = conn.prepareCall(sql3);
stmt3.setString(1,idn);
ResultSet rs = stmt3.executeQuery(); 
%>
<table border=1 cellspacing=0 cellpading=0>
<tr> <td width='150'><p>Mã người dùng</p></td>
    <td width='150'><p>Tên người sở hữu</p></td>
    <td width='150'><p>Tên ví</p></td>
    <td width='200'><p>Tiền trong ví</p></td>
 </tr>
</table>
<%while(rs.next()) {%>
<table border=1 cellspacing=0 cellpading=0>
<tr> <td width='150'><p><%=rs.getString(1) %></p></td>
    <td width='150'><p><%=rs.getString(2) %></p></td>
    <td width='150'><p><%=rs.getString(3) %></p></td>
    <td width='200'><p><%=rs.getString(4) %></p></td>
 </tr>
</table>
<%} %>

</body>
</html> 