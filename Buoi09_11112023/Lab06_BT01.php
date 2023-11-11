<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lab06 - BT 01 - Upload file</title>
</head>
<body>
    <form enctype="multipart/form-data" method="post">
        <input name="myfile" type="file" />
        <button>Upload</button>
    </form>

    <?php
    if (isset($_FILES["myfile"])) {
        if ($_FILES["myfile"]["error"] == 0) {
            if (move_uploaded_file($_FILES["myfile"]["tmp_name"], "./images/".$_FILES["myfile"]["name"])) {
                echo "<h6>Upload file {$_FILES['myfile']['name']} thành công</h6>";
                echo "<h6>Loại file: {$_FILES['myfile']['type']}</h6>";
                echo "<h6>Size: ".($_FILES['myfile']['size'] /1024)." KB</h6>";
            } else {
                echo "<h5>Có lỗi upload file.</h5>";
            }
        }
    } else {
        print("<h5>Check lại source code.</h5>");
    }
    ?>

    <h2>Danh sách file</h2>
    <?php
        $dir_files = opendir("./images");
        while(($file = readdir($dir_files)) != false){
            if($file != "." && $file != ".."){
                echo "<div>$file</div>";
                echo "<img src='./images/$file' height='100px' />";
            }
        }
        closedir($dir_files);
    ?>
</body>
</html>