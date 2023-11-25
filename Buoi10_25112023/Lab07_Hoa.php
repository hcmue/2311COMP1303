<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php include_once("DataProvider.php"); ?>
    <h2>TRA CỨU HOA</h2>
    Loại hoa:
    <form>
        <select name="loai">
            <?php
            $dsloaihoa = DataProvider::ExecuteQuery("SELECT * FROM loaihoa");
            $maloai = isset($_REQUEST["loai"]) ? $_REQUEST["loai"] : 1;
            while($hoa = mysqli_fetch_array($dsloaihoa))
            {
                echo "<option value='{$hoa['MaLoai']}' ";
                if($maloai == $hoa['MaLoai']) echo " selected ";
                echo ">{$hoa['TenLoai']}</option>";
            }
            ?>
        </select>
        <button>Search</button>
    <form>
        <hr>
    <?php        
        $sql_hoa = "SELECT * FROM hoa WHERE MaLoai='{$maloai}' ";
        echo $sql_hoa."<br>";
        $dshoa = DataProvider::ExecuteQuery($sql_hoa);
        while($hoa = mysqli_fetch_array($dshoa))
        {
            echo "<img height=80 src='hoa/{$hoa['Hinh']}' /><br>";
        }
    ?>
</body>
</html>