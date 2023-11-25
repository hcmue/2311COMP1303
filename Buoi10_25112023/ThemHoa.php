<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lab07 - Thêm hoa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>
<body>
    <?php include_once("DataProvider.php"); ?>
    <div class="container">
        <h2 align="center">THÊM HOA</h2>
        <form class="row g-3" method="post" enctype='multipart/form-data'>
            <div class="col-12">
                <label for="loaihoa" class="form-label">Loại hoa</label>
                <select name="loaihoa" class="form-control">
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
            </div>
            <div class="col-12">
                <label for="tenhoa" class="form-label">Tên hoa</label>
                <input name="tenhoa" class="form-control" />
            </div>
            <div class="col-12">
                <label for="giaban" class="form-label">Giá bán</label>
                <input name="giaban" class="form-control" />
            </div>
            <div class="col-12">
                <label for="thanhphan" class="form-label">Thành phần</label>
                <textarea id="thanhphan" name="thanhphan" class="form-control"></textarea>
            </div>
            <div class="col-12">
                <label for="hinh" class="form-label">Hình</label>
                <input name="hinh" class="form-control" type="file" />
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-primary mb-3">Thêm hoa</button>
                <button type="reset" class="btn btn-danger mb-3">Nhập lại</button>
            </div>
        </form>
    </div>

    <?php
    if (isset($_REQUEST['tenhoa']) && isset($_REQUEST['giaban'])){
        //upload file hình vô thư mục hoa
        $ten_file = 'noname.png';
        if (@$_FILES['hinh']['error'] == 0) {
            if (move_uploaded_file(@$_FILES['hinh']['tmp_name'], './hoa/'.@$_FILES['hinh']['name'])) {
                $ten_file = $_FILES['hinh']['name'];
            }
        }

        //chèn csdl
        $sql = "INSERT INTO `hoa` (`MaHoa`, `MaLoai`, `TenHoa`, `GiaBan`, `ThanhPhan`, `Hinh`) VALUES (NULL, '{$_REQUEST['loaihoa']}', '{$_REQUEST['tenhoa']}', '{$_REQUEST['giaban']}', '{$_REQUEST['thanhphan']}', '{$ten_file}')";
        // echo $sql;
        DataProvider::ExecuteQuery($sql);
    }
    ?>

    <script>
        $(document).ready(function() {
            $('#thanhphan').summernote({
                tabsize: 2,
                height: 200
            });
        });
    </script>
</body>
</html>