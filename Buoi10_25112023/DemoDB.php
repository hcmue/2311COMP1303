<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $conn = mysqli_connect("localhost", "root", "", "2311comp130302") or die("Không thể kết nối tới CSDL");

        mysqli_query($conn, "SET NAMES 'utf8' ");

        $result = mysqli_query($conn, "SELECT * FROM LopHP");

        // echo "Total: ".@mysqli_affected_rows($result); //C,U,D
        echo "Total: ".@mysqli_num_rows($result)."<br>"; //SELECT

        while ($row = mysqli_fetch_array($result)){
            echo "{$row['MaLHP']} - {$row[1]}<br>";
        }

        mysqli_close($conn);
    ?>
</body>
</html>