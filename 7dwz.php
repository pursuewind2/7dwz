<?php

static $charTable = array('M', 'G', 'l', 'F', 'o', 'N', 'E', 't', '2', 'g', '4', 'u', 'k', 'Z', 'B', 'U', 'p', 'e', 'T', '6', 'b', 'D', 'L', 'i', 'H', 'Q', 'I', 'O', 'q', 'c', 'A', 'y', 'X', 'd', 'Y', 'C', 'j', '5', '7', '8', '9', 'V', 'J', 'h', 'm', 'R', 'r', 'w', 'n', '3', 'a', 'z', '0', 'v', 's', '1', 'W', 'x', 'f', 'S', 'K', 'P');
static $dbInfo = array(
    "address" => "localhost",
    "username" => "root",
    "password" => "123456",
    "database" => "7dwz"
);
static $webUrl = "http://7dwz.cc/";

// 设置时区
date_default_timezone_set("Asia/Shanghai");



/**
 * 根据今天星期数生成一个随机的sign标记
 * @return string 随机sign
 */
function createSign(){
    global $charTable;
    $sign = array('', '', '', '');

    // 生成第一部分，即一三位，模7表示生成时的星期数
    $part1 = mt_rand(0, 548) * 7 + date("w");
    $sign[0] = $charTable[floor($part1 / 62)];
    $sign[2] = $charTable[$part1 % 62];
    
    // 生成第二部分，即二四位，随机
    $sign[1] = $charTable[mt_rand(0, 61)];
    $sign[3] = $charTable[mt_rand(0, 61)];

    return implode("", $sign);
}


/**
 * URL校验
 */
function checkUrl($url){
    return preg_match("/https?:\/\/([\w-]+\.)+[\w-]+(:[0-9]+)?(\/[\w\-+&@#\/%?=~\|!:,.;]*)?/", $url);
}


/**
 * 生成一个新的短网址
 * @param string $url 待缩短的长网址 
 * @return string 新的短网址的sign 
 */
function newDwz($url){
    global $dbInfo;

    $db = new mysqli($dbInfo["address"], $dbInfo["username"], $dbInfo["password"], $dbInfo["database"]);
    // 查找是否存在，直到生成不存在的sign
    do{
        $sign = createSign();
        $week = date("w");
        $result = $db->query("SELECT `id` FROM `day_$week` WHERE `sign`='$sign'");
    }while($result && $result->num_rows > 0);

    // 插入数据
    $db->query("INSERT INTO `day_$week`(`sign`, `url`) VALUES('$sign', '$url')");

    return $sign;
}


/**
 * 解析短网址
 * @param string $sign 待解析短网址的sign
 * @return string 得到的长网址
 */
function parseDwz($sign){
    global $charTable, $dbInfo, $webUrl;

    // 解析对应天数的表
    $strs = str_split($sign);
    $part1 = array_search($strs[0], $charTable) * 62 + array_search($strs[2], $charTable);
    $week = $part1 % 7;

    $db = new mysqli($dbInfo["address"], $dbInfo["username"], $dbInfo["password"], $dbInfo["database"]);
    $result = $db->query("SELECT `url` FROM `day_$week` WHERE `sign`='$sign'");
    if($result && $result->num_rows > 0){
        $row = $result->fetch_assoc();
        return $row["url"];
    }else{
        return $webUrl;
    }
}


/**
 * 清除当天过期失效数据
 */
function clear(){
    global $dbInfo;

    $db = new mysqli($dbInfo["address"], $dbInfo["username"], $dbInfo["password"], $dbInfo["database"]);
    $week = date("w");
    $result = $db->query("TRUNCATE TABLE day_$week");

    return true;
}

?>