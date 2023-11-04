<?php
//biến
$ten_ban = "David, Le";
//hằng
define("LUONGCB", 1800);

//Kiểu chuỗi
$chuoi_1 = 'Xin chào $ten_ban';
$chuoi_2 = "Xin chào $ten_ban";
$chuoi_3 = "Xin chào ".$ten_ban;

print($chuoi_1."<br>");
print($chuoi_2."<br>");
print($chuoi_3."<br>");
?>