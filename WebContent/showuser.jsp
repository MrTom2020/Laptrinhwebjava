<%@page import="java.sql.SQLException"%>
<%@page import= "java.sql.Statement"%>
<%@page import= "java.sql.DriverManager"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.text.ParseException" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@page	import= "java.sql.CallableStatement"%>
<%@page import ="java.sql.ResultSet"%>
    <%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>Insert title here</title>
</head>
<body>
 
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn;
ResultSet rs = null;
conn =  DriverManager.getConnection("jdbc:mysql://localhost:3309/qlct","root","123456789");
String  ma = request.getParameter("tentk1");
String ten = request.getParameter("mktk1");
String sql = "{CALL kiemtra(?,?)}";
CallableStatement stmt1 = conn.prepareCall(sql);
stmt1.setString(1, ma);
stmt1.setString(2,ten);
rs = stmt1.executeQuery(); 
%>
<%while(rs.next()) {%>
<%String s =  rs.getString(1); %>
<% if(s.length() > 0){ %>
<% 
	session.setAttribute("ten", rs.getString(1));
	session.setAttribute("MA", rs.getString(2));
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", "http://localhost:8080/baocaoweb/jsp/trangchu.jsp");
	%>
<%} %>

<%} %>
String site = "http://localhost:8080/baocaoweb/web/index.jsp";
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
</body>
</html> 