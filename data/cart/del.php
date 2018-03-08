<?php
/**
* 删除购物车条目
*/
header('Content-Type: application/json;charset=UTF-8');
require_once('../init.php');
@$iid = $_REQUEST['iid'] or die('{"code":401,"msg":"iid required"}');

session_start();
if(! @$_SESSION['uid']){
  die('{"code":300, "msg":"login required"}');
}
$uid=$_SESSION['uid'];

$sql = "DELETE FROM jeep_shoppingcart_item WHERE iid=$iid AND user_id=$uid";
$result = mysqli_query($conn, $sql);
if($result){
  echo '{"code":200, "msg":"delete succ"}';
}else {
  echo '{"code":500, "msg":"delete err"}';
}

?>