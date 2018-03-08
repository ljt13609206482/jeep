<?php
    require_once('../init.php');
    $uname=$_REQUEST['uname'];
    $upwd=$_REQUEST['upwd'];
    if($uname&&$upwd){
      $sql="select uid from jeep_user where uname='$uname' and binary upwd='$upwd'";
      $row=mysqli_fetch_row(mysqli_query($conn,$sql));
      if($row){
        session_start();
        $_SESSION["uid"]=$row[0];
        //var_dump($_SESSION["uid"]);
        echo json_encode(["ok"=>1,'uname'=>$uname]);
      }else
        echo json_encode(["ok"=>0,"msg"=>"用户名或密码错误"]);
    }
?>