<?php
   session_start();
   $servername = "localhost";
   $username = "root";
   $password = "";
   $dbname = "QLCT";
   $mand = $_SESSION['Mand'];
   $conn = mysqli_connect($servername,$username,$password,$dbname);
   $sql = "CALL danhsachmabaihat('$mand')";
   
   $ketnoi = mysqli_query($conn,$sql);
   echo '<form action="#" method="POST">';
   echo '<select name="mabh">';
    while($row = mysqli_fetch_array($ketnoi))
    {
        echo '<option value="$row[0]">';
        echo  $row[0];
        echo '</option>';
    }
    echo '</select>';
    echo '<input type="submit" value="Đồng ý"/>';
    echo '</form>';
    $kq = $_POST['mabh'];
    if($kq != '' && $kq != NULL)
    {
        $SQL2  = 'CALL 	danhsachbaiht("$kq")';
        $ketnoi2 = mysqli_query($conn,$ketnoi2);
        
    }
  
   mysqli_close($conn);
 ?>