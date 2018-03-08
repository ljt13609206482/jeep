<?php
    require_once("../init.php");
    $uname=$_REQUEST["uname"];
    $sql="SELECT * FROM jeep_user WHERE uname='$uname'";
    $row=mysqli_fetch_row(mysqli_query($conn,$sql));
    if($row){
        echo(json_encode(['ok'=>-1,'msg'=>'用户名已存在！']));
    }else{
        echo(json_encode(['ok'=>1,'msg'=>'用户可用！']));
    };
?>