<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post">
        Số dòng: <input name="txtSoDong" /><br>
        Số cột: <input name="txtSoCot" /><br>
        <button>Vẽ bảng</button>
    </form>
    <?php
        $so_dong = isset($_REQUEST['txtSoDong']) ? $_REQUEST['txtSoDong'] : 5;
        $so_cot = isset($_REQUEST['txtSoCot']) ? $_REQUEST['txtSoCot'] : 5;
        print("Vẽ bảng $so_dong dòng, $so_cot cột.<br>");

        echo '<table border="1">';
        for ($idong = 0; $idong < $so_dong; $idong++){
            echo '<tr>';
            for ($icol = 0; $icol < $so_cot; $icol++){
                echo "<td>col{$icol}, row{$idong}</td>";
            }
            echo '</tr>';
        }
        echo '</table>';
    ?>
</body>
</html>