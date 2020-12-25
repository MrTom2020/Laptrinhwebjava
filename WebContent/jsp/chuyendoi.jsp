<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="Description" content="giúp bạn quản lý tài chính tốt hơn,bạn sẽ phải bất ngờ trước sự quản lý hợp logic đến từ chúng tôi"/>
    <meta http-equiv="Keywords" content="Quản lý tiền,My wallet,Amazing"/>
    <title>AMAZING</title>
    <link id="btcss" href="../css/bootstrap_amazing.css" rel="stylesheet" media="(max-width: 996px)">
    <link rel="stylesheet" type="text/css" href="../css/amazing.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
   <link rel="stylesheet" type="text/css" href="../css/css_cua_trang_chu.css">
  
</head>
<body>
<a href="#dn"><img id="up" src="https://img.icons8.com/cute-clipart/64/000000/circled-chevron-up.png"/></a>  
    
    <header id="hder">
        <img src="../tainguyenkhac/hinh_anh/hinh_background/bk3.png" alt="Hình banner" class="img-thumbnail" style="border:none;background-color: #2cb84b;">
    </header>
    <nav id="NAV" class="navbar nav-fill">
  		<jsp:include page="nav.jsp" flush="true"></jsp:include>
    </nav>
    <aside class="main-app-container" name="gioithieu">
        <article style="margin-top:-8%;">
           <jsp:include page="g_chuyendoitiente.jsp" flush="true"></jsp:include>
           
        </article>
    </aside>
    <div class="footer_wrap" style="background:#2ab849;">
  		<jsp:include page="g_footer.jsp" flush="true"></jsp:include>
    </div>
    <script type="text/javascript" src="../js/jquery-1.10.2.min.js">
    </script>
    <script type="text/javascript" src="../js/bootstrap.min.js">
    </script>
</body>

</html>