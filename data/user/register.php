<?php
    require_once("../init.php");
    //创建变量接受用户传递的数据
    @$uname=$_REQUEST["uname"];
    @$upwd=$_REQUEST["upwd"];
    @$email=$_REQUEST["email"];
    @$phone=$_REQUEST["phone"];
    //将数据插入数据库
    $sql="INSERT INTO jeep_user (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES(null,'$uname','$upwd','$email','$phone',null,null,null)";
    $result=mysqli_query($conn,$sql);

    if($result){
        echo(json_encode(['code'=>1,'msg'=>'注册成功！']));
    }else{
        echo(json_encode(['code'=>1,'msg'=>'注册失败！']));
    };
?>