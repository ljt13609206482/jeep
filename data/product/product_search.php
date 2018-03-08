<?php
/**
* 分页显示所有的商品
*/
header('Content-Type: application/json;charset=UTF-8');

@$kw = $_REQUEST['kw'];
@$pno = $_REQUEST['pno'];
if(!$pno){
  $pno = 1;
}else {
  $pno = intval($pno);
};

$output=['recordCount' => 0,'pageSize' => 12,        
  'pageCount' => 0,       
  'pno' => $pno,          
  'data' => null];
require_once('../init.php');
//获取总记录数
$sql = "SELECT COUNT(*) FROM jeep_bot";
if($kw){
  $kw = urldecode($kw);
  $sql .= " WHERE title LIKE '%$kw%'";
}
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_row($result);
$output['recordCount'] = intval($row[0]);

//计算总页数
$output['pageCount'] = ceil($output['recordCount']/$output['pageSize']);

//获取指定页中的数据
$start = ($output['pno']-1)*$output['pageSize'];
$count = $output['pageSize'];
$sql = "SELECT bid,title,price,suit_car,can_order FROM jeep_bot " . ($kw?"WHERE title LIKE '%$kw%'":"") . " LIMIT $start,$count";
$result = mysqli_query($conn,$sql);

if(!$result){       //SQL语句执行失败
  echo('{"code":500, "msg":"db execute err"}');
}else {
  $list = mysqli_fetch_all($result, MYSQLI_ASSOC);
  for($i=0; $i<count($list); $i++){
    $bid = $list[$i]['bid'];
    $sql = "SELECT md FROM jeep_bot_pic WHERE bot_id=$bid LIMIT 0,1";
    $result = mysqli_query($conn, $sql);
    $list[$i]['pic'] = mysqli_fetch_row($result)[0];
  }
  $output['data'] = $list;
  echo json_encode($output);
}