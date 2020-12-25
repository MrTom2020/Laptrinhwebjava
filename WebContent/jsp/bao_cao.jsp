<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="Description" content="giúp bạn quản lý tài chính tốt hơn,bạn sẽ phải bất ngờ trước sự quản lý hợp logic đến từ chúng tôi"/>
    <meta http-equiv="Keywords" content="Quản lý tiền,ví của tôi,Amazing"/>
    <title>AMAZING</title>
    <link id="btcss" href="../css/bootstrap_amazing.css" rel="stylesheet" media="(max-width: 996px)">
    <link rel="stylesheet" type="text/css" href="../css/amazing.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/css_cua_trang_chu.css">
    <link rel="stylesheet" type="text/css" href="../css/css_bieu_do.css">
    
</head>
<body>
<a href="#dn"><img id="up" src="https://img.icons8.com/cute-clipart/64/000000/circled-chevron-up.png"/></a>  
<div class="modal fade" role="dialog" aria-labelledby ="dangky" aria-hidden="true" id="dk1" tabindex="-1" style="border:0;">
      <jsp:include page="dang_ky.jsp" flush="true"></jsp:include>
    </div>
    <div class="modal fade" role="dialog" aria-labelledby="dnhap" aria-hidden="true" id="dn" tabindex="-1" style="border: 0;">
    	 <jsp:include page="dang_nhap.jsp" flush="true"></jsp:include>
    </div>
    
    <header id="hder">
        <img src="../tainguyenkhac/hinh_anh/hinh_background/bk3.png" alt="Hình banner" class="img-thumbnail" style="border:none;background-color: #2cb84b;">
        <button data-toggle="modal" data-target="#dn"  id="DN" style="margin-right: 20px;"><strong><%=session.getAttribute("ten") %></strong></button>
        <button data-toggle="modal" id="dk"  data-target="#dk1"> Đăng ký </button>
    </header>
    <nav id="NAV" class="navbar navbar-default">
 	<jsp:include page="nav.jsp" flush="true"></jsp:include>
    </nav>
    <aside class="main-app-container">
        <section id="bieudo">
      		<jsp:include page="g_trang_chu.jsp" flush="true"></jsp:include>
        </section>
    </aside>
    <div id="chon">
               <form action="#" method="POST">
                  <h3 class="text-center title">Báo cáo theo</h3>
                    <a href="bctheothang.jsp" class="btn btn-success col-sm-12">Tuần</a>
                    <br/>
                    <br/>
                    <br/>
                    <a href="bctheothang.jsp" class="btn btn-success col-sm-12">Tháng</a>
                    <br/>
                    <br/>
                    <br/>
                    <a href="bctheothang.jsp" class="btn btn-success col-sm-12">Qúy</a>
                    <br/>
                    <br/>
                    <br/>
                    <a href="bctheothang.jsp" class="btn btn-success col-sm-12">Năm</a>
               </form> 
    </div>
        <img src="../tainguyenkhac/hinh_anh/hinh_background/bk5.png" alt="" id="qc">
        <div class="footer_wrap" style="background:#2ab849;">
          <jsp:include page="g_footer.jsp" flush="true"></jsp:include>
    </div>
    <script type="text/javascript" src="../js/jquery-1.10.2.min.js">
    </script>
    <script type="text/javascript" src="../js/bootstrap.min.js">
    </script>
    <script>
        function pleasewaiting()
        {
            alert("Hiện tại tính năng này còn trong quá trình phát triển xin vui lòng chờ các phiên bản cập nhật sau");
        }
       
       
    </script>
</body>

</html>