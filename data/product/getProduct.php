<?php
    /**
    * ��ҳ��ʾ���е���Ʒ
    */
    header('Content-Type: application/json;charset=UTF-8');
    require_once("../init.php");
    @$kw = $_REQUEST['kw'];
    @$pno = $_REQUEST['pno'];
    if(!$pno){
      $pno = 1;
    }else {
      $pno = intval($pno);
    }

    $output = [
      'recordCount' => 0,     //�����������ܼ�¼��
      'pageSize' => 12,        //ÿҳ��С����ÿҳ��������ʾ�ļ�¼����
      'pageCount' => 0,       //��ҳ��
      'pno' => $pno,          //��ǰ��������ҳ��
      'data' => null          //��ǰҳ�е�����
    ];
    //��ȡ�ܼ�¼��
    $sql = "SELECT COUNT(*) FROM jeep_bot";
    if($kw){
      $kw = urldecode($kw);
      $sql .= " WHERE title LIKE '%$kw%'";
    }
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_row($result);
    $output['recordCount'] = intval($row[0]);

    //������ҳ��
    $output['pageCount'] = ceil($output['recordCount']/$output['pageSize']);

    //��ȡָ��ҳ�е�����
    $start = ($output['pno']-1)*$output['pageSize'];
    $count = $output['pageSize'];
    $sql = "SELECT bid,title,price,sold_count,is_onsale FROM jeep_bot " . ($kw?"WHERE title LIKE '%$kw%'":"") . " LIMIT $start,$count";
    $result = mysqli_query($conn,$sql);

    if(!$result){       //SQL���ִ��ʧ��
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
?>