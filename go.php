<?php

include_once("7dwz.php");

// 获取并解析sign
@$sign = $_GET["sign"];
$url = parseDwz($sign);

//重定向
header("Location:".$url);

?>