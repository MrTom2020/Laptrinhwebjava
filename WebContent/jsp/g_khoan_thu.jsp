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
                <h1>Khoản thu nhập</h1>
          <table bgcolor="#fafafa" border="0" bordercolor="#e2e2e2" cellpadding="0" cellspacing="0" class="tbl-loan-repayment">
                <div class="slideshow" style="background:#ebebeb;">
                  <form action="http://localhost:8080/baocaoweb/kt/themkhoanthu.jsp" method="post"  class="form">
                  <label for="tenkhoanchitieu2">Tên khoản thu</label>
                  <input class="form-control" type="text" name="tenkhoanchitieu2">
                  <br/>
                   <br/>
                   
                  <label for="tiena2">Tiền</label><input type="text" class="form-control" name="tiena2" style=" text-align: right;">
                  <label for="ngaygd2">Ngày giao dịch</label><input type="date" class="form-control" name="ngaygd2" style=" text-align: right;">
                  <label for="mota2">Mô tả</label><input type="text" class="form-control" name="mota2">
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