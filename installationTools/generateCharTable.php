<?php

$str = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
$str_array = str_split($str);
shuffle($str_array);
shuffle($str_array);
shuffle($str_array);

$str = "";
foreach($str_array as $value){
    $str .= "'".$value."', ";
}
$str = substr($str, 0, -2);

echo "array(".$str.")";

?>