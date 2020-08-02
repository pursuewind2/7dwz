<?php

include_once("7dwz.php");

// 获取失效时间：7天
function getDeadline(){
    
    $todayTime = strtotime(date("Y-m-d"));
    $deadlineTime = $todayTime + 604800;
    return date("Y-m-d H:i:s", $deadlineTime);
}


// 获取参数
@$url = $_POST["url"];
// 判断是否是有效url
if(checkUrl($url)){
    // 有效url，获取sign，构造成功信息
    $sign = newDwz($url);
    $arr = array(
        "code" => 1,
        "dwz" => $webUrl.$sign,
        "deadline" => getDeadline()
    );
    
}else{
    // 无效url，构造错误信息
    $arr = array(
        "code" => 0,
        "error" => "url校验错误"
    );
}


// 跨域
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods:POST,GET');
header('Access-Control-Allow-Headers:x-requested-with,Content-Type,X-CSRF-Token');


// 输出json格式
header("Content-Type: application/json");
echo json_encode($arr);

?>