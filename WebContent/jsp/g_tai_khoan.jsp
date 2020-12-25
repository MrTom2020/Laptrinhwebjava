<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="vi">
<head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
</head>
<body>
  <div class="modal fade" role="dialog" aria-labelledby="vi" aria-hidden="true" id="vi" tabindex="-1">
       
    </div>
    <div class="modal fade" role="dialog" aria-labelledby="nhom" aria-hidden="true" id="nhom" tabindex="-1">
      <jsp:include page="g_nhom.jsp" flush="true"></jsp:include>
    </div>
  <div class="container">
    <div class="col-sm-4" style="padding-bottom:5%;">
    &ensp;<br/>
     <button><a href="http://localhost:8080/baocaoweb/jsp/vitien.jsp" > Ví của tôi</a>
    </div>
    <div class="col-sm-4" style="padding-bottom:5%;">
    &ensp;<br/>
    <button data-toggle="modal" data-target="#nhom">Nhóm chi tiêu</button>
    </div>
   
    <div class="col-sm-4" style="padding-bottom:5%;">
    &ensp;<br/>
    Cài đặt</div>
    <div class="col-sm-4" style="padding-bottom:5%;">
    &ensp;<br/><a href="g_tienich.jsp">
    Tiện ích</a>
    </div>
    <div class="col-sm-4" style="padding-bottom:5%;">
    &ensp;<br/>
    Sổ nợ</div>
    <div class="col-sm-4" style="padding-bottom:5%;">
    &ensp;<br/><a href="#">
    Hỗ trợ</a></div>
    <div class="col-sm-4" style="padding-bottom:5%;">
    &ensp;<br>
    Cửa hàng</div>
  </div>
</body>
</html>