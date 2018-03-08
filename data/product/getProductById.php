<?php
/**
* 根据产品编号bid查询商品的所有信息
* 参数： bid
* 返回：{
*     "details":{ ..., "picList":[{},...] }
*     "family":{ "fid":.., "fname":.., "laptopList":[ {"lid":..,"spec":..},... ]}
*  }
*/
header('Content-Type: application/json;charset=UTF-8');
require_once("../init.php");
@$bid = $_REQUEST['bid'];
if(!$bid){
  $bid = 1;
}

$output = [
  'details'=>[],
  'pic'=>[]
];
//读取商品的信息
$sql = "SELECT *,(SELECT fname FROM jeep_car_family WHERE fid=family_id) AS fname FROM jeep_bot WHERE bid=$bid";
$result = mysqli_query($conn, $sql);
$output['details'] = mysqli_fetch_assoc($result);
$result = mysqli_query($conn, $sql);
//读取笔记本商品的小图片列表
$sql = "SELECT sm FROM jeep_bot_pic WHERE bot_id=$bid";
$result = mysqli_query($conn, $sql);
$output['pic']['sm'] = mysqli_fetch_all($result, MYSQLI_ASSOC);
//读取商品的中图片列表
$sql = "SELECT md FROM jeep_bot_pic WHERE bot_id=$bid";
$result = mysqli_query($conn, $sql);
$output['pic']['md'] = mysqli_fetch_all($result, MYSQLI_ASSOC);
echo json_encode($output);