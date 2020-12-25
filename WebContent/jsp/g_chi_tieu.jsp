<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vn">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="Description" content="giúp bạn quản lý tài chính tốt hơn,bạn sẽ phải bất ngờ trước sự quản lý hợp logic đến từ chúng tôi"/>
    <meta http-equiv="Keywords" content="Quản lý tiền,My wallet,Amazing"/>
    <title>AMAZING</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/css_cua_trang_chu.css">
    
</head>
<body>

<div class="modal fade" role="dialog" aria-labelledby ="dangky" aria-hidden="true" id="dk1" tabindex="-1" style="border:0;">
      <jsp:include page="dang_ky.jsp" flush="true"></jsp:include>
    </div>
    <div class="modal fade" role="dialog" aria-labelledby="dnhap" aria-hidden="true" id="dn" tabindex="-1" style="border: 0;">
    	 <jsp:include page="dang_nhap.jsp" flush="true"></jsp:include>
    </div>
    
    <header id="hder">
        <img src="../tainguyenkhac/hinh_anh/hinh_background/bk3.png" alt="Hình banner" class="img-thumbnail row mt-3" style="border:none;background-color: #2cb84b;">
        <button data-toggle="modal" data-target="#dn" id="DN"><strong><%=session.getAttribute("ten") %></strong></button>
        <button data-toggle="modal" id="dk"  data-target="#dk1"> Đăng ký</button>
    </header>
    <nav id="NAV" class="navbar navbar-default">
    
    </nav>
</body>
</html>