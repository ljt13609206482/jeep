<?php
/**
* 获取当前登录用户的购物车内容
*/
header('Content-Type: application/json;charset=UTF-8');
require_once('../init.php');
session_start();
@$uid=$_SESSION['uid'];

//获取总记录数
$sql = "SELECT c.iid,c.product_id,b.title,b.price,c.count,c.is_checked FROM jeep_shoppingcart_item c, jeep_bot b WHERE c.product_id=b.bid AND user_id=$uid";
$result = mysqli_query($conn, $sql);
$list = mysqli_fetch_all($result, MYSQLI_ASSOC);
//查询每个商品的第一幅小图片
foreach($list as $i=>$p){
  $sql = "SELECT sm FROM jeep_bot_pic WHERE bot_id=$p[product_id] LIMIT 1";
  $result = mysqli_query($conn, $sql);
  $row = mysqli_fetch_row($result);
  $list[$i]['pic'] = $row[0];
};
$output = [
  'code'=>200,
  'data'=>$list
];
echo json_encode($output);

?>