<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="../css/admin.css">
</head>
<body>
<div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <H4 class="modal-title" aria-labelledby="dnhap">Thông báo</H4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="close">
                  <span aria-hidden="true">&times;</span>
              </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <form action="http://localhost:8080/html/dang_nhap.php"  method="POST" role="form" class="row">
                         <div class="col-sm-3">
                             Không có thông báo
                         </div> 
                         
                         <img id="dt1" src="../tainguyenkhac/hinh_anh/hinh_background/bk2.png" class="image"/>
                         <img id="dt2" src="../tainguyenkhac/hinh_anh/hinh_dong_vat/dong_vat_so_1.png" class="image"/>
                         
                    </div>
                    <div class="col-sm-5" id="nut">
                          <button class="btn btn-secondary" data-dismiss="modal" aria-label="close" name="BTNXUAT">Đăng xuất</button>
                         <button class="btn btn-secondary" data-dismiss="modal" aria-label="close">Thoát</button>
                         <button type="button" class="btn btn-secondary" id="ad"><a href="#">Quản trị viện</a></button>
                    </div>
                        </form>
                    
                    </div>
                </div>
            </div>
        </div>
</body>

</html>