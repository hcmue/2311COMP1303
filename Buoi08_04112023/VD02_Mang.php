<?php
// Demo mảng
$colors = array("red", "blue", "green");
foreach($colors as $item){
    echo "Màu: ".$item."<br>";
}
?>
<hr />
<?php
$mon_hoc = array(
    "COMP1303" => "PTUD Web",
    "COMP1304" => "PTUDDD",
    "COMP1804" => "Lập trình Python"
);
foreach($mon_hoc as $ma_mon => $ten_mon){
    echo "$ma_mon => $ten_mon.<br>";
}
?>