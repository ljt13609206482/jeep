<?php
/**
* 修改购物车条目中的是否勾选
*/
header('Content-Type: application/json;charset=UTF-8');
require_once('../init.php');
@$iid = $_REQUEST['iid'] or die('{"code":401,"msg":"iid required"}');
@$checked = $_REQUEST['checked'];
if($checked!=='0' && !$checked){
  die('{"code":402,"msg":"checked required"}');
}

session_start();
if(! @$_SESSION['uid']){
  die('{"code":300, "msg":"login required"}');
}
@$uid=$_SESSION['uid'];

$sql = "UPDATE jeep_shoppingcart_item SET is_checked=$checked WHERE user_id=$uid";
if($iid!=-1){
  $sql.=" AND iid=$iid ";
}
$result = mysqli_query($conn, $sql);
if($result){
  echo '{"code":200, "msg":"update succ"}';
}else {
  echo '{"code":500, "msg":"update err"}';
}

?>