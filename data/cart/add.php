<?php
/**
* 添加到购物车
*/
header('Content-Type: application/json;charset=UTF-8');
require_once('../init.php');
@$bid = $_REQUEST['bid'] or die('{"code":401,"msg":"bid required"}');
@$buyCount = $_REQUEST['buyCount'] or die('{"code":402,"msg":"buyCount required"}');

session_start();
$user_id=$_SESSION['uid'];
$sql = "SELECT iid FROM jeep_shoppingcart_item WHERE user_id=$user_id AND product_id=$bid";
$result = mysqli_query($conn, $sql);
if( mysqli_fetch_row($result) ){
  $sql = "UPDATE jeep_shoppingcart_item SET count=count+$buyCount WHERE user_id=$user_id AND product_id=$bid";
}else {
  $sql = "INSERT INTO jeep_shoppingcart_item VALUES(NULL, $user_id, $bid, $buyCount, false)";
}
$result = mysqli_query($conn, $sql);
if($result){
  echo '{"code":200, "msg":"add succ"}';
}else {
  echo '{"code":500, "msg":"add err"}';
}