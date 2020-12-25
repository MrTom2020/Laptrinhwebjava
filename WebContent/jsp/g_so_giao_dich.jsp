<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link id="btcss" href="../css/bootstrap_amazing.css" rel="stylesheet" media="(max-width: 996px)">
    <link rel="stylesheet" type="text/css" href="../css/amazing.css">
    <link rel="stylesheet" type="text/css" href="../css/css_tinhlaisuat.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
</head>
<body>
<div class="page_wrap bg1 ">
    <div class="page">
        <div class="column_left">

            
<style type="text/css">.column_left p,.column_left a,.column_left div,.leftmenu > li > a{font-size:13px !important;}
</style>
<div class="caption">Cá nhân</div>
    <ul class="leftnav">
		<jsp:include page="menu_so_giao_dich.jsp" flush="true"></jsp:include>
    </ul>
         </div>
        <div class="column_middle">
                <h1>Khoản chi tiêu mua sắm</h1>
          <table bgcolor="#fafafa" border="0" bordercolor="#e2e2e2" cellpadding="0" cellspacing="0" class="tbl-loan-repayment">
                <div class="slideshow" style="background:#ebebeb;">
                  <form action="http://localhost:8080/baocaoweb/kt/themkhoanchi.jsp" method="post"  class="form">
                  <label for="tenkhoanchitieu">Tên khoản chi</label>
                  <select name="tenkhoanchitieu">
 
     				  <option value="Bảo hiểm">Bảo hiểm</option> 
     				  <option value="Di chuyển">Di chuyển</option> 
     				  <option value="Bảo dưỡng">Bảo dưỡng</option> 
     				  <option value="Gửi xe">Gửi xe</option> 
     				  <option value="Taxi">Taxi</option> 
     				  <option value="Xăng dầu">Xăng dầu</option> 
     				  <option value="Con cái">Con cái</option> 
     				  <option value="Gia đình">Gia đình</option> 
     				  <option value="Sửa chữa nhà cửa">Sửa chữa nhà cửa</option> 
     				  <option value="Vật nuôi">Vật nuôi</option> 
     				  <option value="Gia đình">Gia đình</option> 
     				  <option value="giáo dục">giáo dục</option> 
     				  <option value="Sách">Sách</option> 
     				  <option value="giải trí">giải trí</option> 
     				  <option value="Phim ảnh">Phim ảnh</option> 
     				  <option value="Trò chơi">Trò chơi</option> 
     				  <option value="Hóa đơn Gas">Hóa đơn Gas</option> 
     				  <option value="Hóa đơn Thuê nhà">Hóa đơn Thuê nhà</option> 
     				  <option value="Hóa đơn Nước">Hóa đơn Nước</option> 
     				  <option value="Hóa đơn Thuê nhà">Hóa đơn Thuê nhà</option> 
     				  <option value="Hóa đơn Điện">Hóa đơn Điện</option> 
     				 <option value="Hóa đơn Điện thoại">Hóa đơn Điện thoại</option> 
     				  <option value="Bảo hiểm">Hóa đơn Gas</option> 
     				  <option value="Bảo hiểm">Hóa đơn Gas</option> 
     				  <option value="Bảo hiểm">Hóa đơn Gas</option> 
     				  <option value="Bảo hiểm">Hóa đơn Gas</option> 
     				   <option value="Hóa đơn Gas">Hóa đơn Gas</option> 
     				  <option value="Bảo hiểm">Hóa đơn Gas</option> 
     				  <option value="Bảo hiểm">Hóa đơn Gas</option> 
     				  <option value="Bảo hiểm">Hóa đơn Gas</option> 
     				  <option value="Bảo hiểm">Hóa đơn Gas</option> 
                  </select>
                  <br/>
                   <br/>
                   
                  <label for="tiena">Tiền</label><input type="text" class="form-control" name="tiena" style=" text-align: right;">
                  <label for="ngaygd">Ngày giao dịch</label><input type="date" class="form-control" name="ngaygd" style=" text-align: right;">
                  <label for="mota">Mô tả</label><input type="text" class="form-control" name="mota">
                  <input type="submit" value="Đồng ý" class="btn btn-link">
                  </form>
                </div>
        </table>
        <div id="listRepayment">&nbsp;</div>
        <div class="line-bar">&nbsp;</div>     
        <div class="clear"></div>
                <div class="clear"></div>
                <div class="clear"></div>
                <div class="clear"></div>




            <div class="clear"></div>
            <div class="content_footer">
                <div class="float-left"> </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>