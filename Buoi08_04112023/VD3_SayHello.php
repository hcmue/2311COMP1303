<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post">
        Họ tên: <input name="hoten" />
        <button>Chào</button>
    </form>
    <hr>
    <?php
        if(isset($_REQUEST["hoten"])){
            echo "Xin chào: ".$_REQUEST["hoten"];
        }
    ?>
</body>
</html>