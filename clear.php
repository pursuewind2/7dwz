<?php

include_once("7dwz.php");


$week = date("w");
$filename = __DIR__."/clear.lock";
$content = file_get_contents($filename);

if($content != $week){
    clear();
    file_put_contents($filename, $week);
    echo "Clear Successfully.";
}else{
    echo "It's been cleaned up today.";
}

?>