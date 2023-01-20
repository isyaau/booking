<!-- manage-insert.php -->
<?php
session_start();
include_once 'dbCon.php';
$con = connect();

//add table
if (isset($_POST['addtable'])) {
    $tablename = $_POST['tablename'];
    $res_id = $_SESSION['id'];

    $iquery = "INSERT INTO `meja`( `res_id`, `table_name`) 
            VALUES ('$res_id','$tablename');";
    if ($con->query($iquery) === TRUE) {
        echo '<script>alert("New table added successfully")</script>';
        echo '<script>window.location="table-add.php"</script>';
    } else {
        echo "Error: " . $iquery . "<br>" . $con->error;
    }
}



if (isset($_POST['addItem'])) {
    $itemname = $_POST['itemname'];
    $price = $_POST['price'];
    $madeby = $_POST['madeby'];
    $food_type = $_POST['food_type'];

    $res_id = $_SESSION['id'];


    //$ecnpassword= md5($password);

    $checkSQL = "SELECT * FROM `menu` WHERE res_id = '$res_id' and item_name = '$itemname' and price = '$price';";
    $checkresult = $con->query($checkSQL);
    if ($checkresult->num_rows > 0) {
        echo '<script>alert("Item With This information Is Already Exit.")</script>';
        echo '<script>window.location="menu-add.php"</script>';
    } else {

        if (isset($_FILES['gambar'])) {
            // files handle
            $targetDirectory = "item-image/";
            // get the file name
            $file_name = $_FILES['gambar']['name'];
            // get the mime type
            $file_mime_type = $_FILES['gambar']['type'];
            // get the file size
            $file_size = $_FILES['gambar']['size'];
            // get the file in temporary
            $file_tmp = $_FILES['gambar']['tmp_name'];
            // get the file extension, pathinfo($variable_name,FLAG)
            $extension = pathinfo($file_name, PATHINFO_EXTENSION);

            if ($extension == "jpg" || $extension == "png" || $extension == "jpeg") {
                move_uploaded_file($file_tmp, $targetDirectory . $file_name);
                $iquery = "INSERT INTO `menu`( `res_id`, `item_name`, `madeby`, `food_type`, `price`, `image`) 
                            VALUES ('$res_id','$itemname','$madeby','$food_type','$price','$file_name');";
                if ($con->query($iquery) === TRUE) {
                    echo '<script>alert("Item added successfully")</script>';
                    echo '<script>window.location="menu-add.php"</script>';
                } else {
                    echo "Error: " . $iquery . "<br>" . $con->error;
                }
            } else {
                echo '<script>alert("Required JPG,PNG,GIF in Logo Field.")</script>';
                echo '<script>window.location="menu-add.php"</script>';
            }
        }
    }
}
if (isset($_POST['editItem'])) {
    // membuat variabel untuk menampung data dari form
    $id = $_POST['id'];
    $item_name = $_POST['item_name'];
    $price = $_POST['price'];
    $madeby = $_POST['madeby'];
    $food_type = $_POST['food_type'];
    $res_id = $_SESSION['id'];
    $gambar = $_FILES['gambar']['name'];

    //cek dulu jika merubah gambar produk jalankan coding ini
    if ($gambar != "") {
        $ekstensi_diperbolehkan = array('png', 'jpg'); //ekstensi file gambar yang bisa diupload 
        $x = explode('.', $gambar); //memisahkan nama file dengan ekstensi yang diupload
        $ekstensi = strtolower(end($x));
        $file_tmp = $_FILES['gambar']['tmp_name'];
        $angka_acak     = rand(1, 999);
        $gambar_baru = $angka_acak . '-' . $gambar; //menggabungkan angka acak dengan nama file sebenarnya
        if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
            move_uploaded_file($file_tmp, 'item-image/' . $gambar_baru); //memindah file gambar ke folder gambar

            // jalankan query UPDATE berdasarkan ID yang produknya kita edit
            $query  = "UPDATE menu SET item_name = '$item_name', price = '$price', madeby = '$madeby', food_type = '$food_type', gambar = '$gambar_baru'";
            $query .= "WHERE id = '$id'";
            $result = mysqli_query($con, $query);
            // periska query apakah ada error
            if (!$result) {
                die("Query gagal dijalankan: " . mysqli_errno($con) .
                    " - " . mysqli_error($con));
            } else {
                //tampil alert dan akan redirect ke halaman index.php
                //silahkan ganti index.php sesuai halaman yang akan dituju
                echo "<script>alert('Data berhasil diubah.');window.location='menu-list.php';</script>";
            }
        } else {
            //jika file ekstensi tidak jpg dan png maka alert ini yang tampil
            echo "<script>alert('Ekstensi gambar yang boleh hanya jpg atau png.');window.location='menu-add.php';</script>";
        }
    } else {
        // jalankan query UPDATE berdasarkan ID yang produknya kita edit
        $query  = "UPDATE menu SET item_name = '$item_name', price = '$price', madeby = '$madeby', food_type = '$food_type'";
        $query .= "WHERE id = '$id'";
        $result = mysqli_query($con, $query);
        // periska query apakah ada error
        if (!$result) {
            die("Query gagal dijalankan: " . mysqli_errno($con) .
                " - " . mysqli_error($con));
        } else {
            //tampil alert dan akan redirect ke halaman index.php
            //silahkan ganti index.php sesuai halaman yang akan dituju
            echo "<script>alert('Data berhasil diubah.');window.location='menu-list.php';</script>";
        }
    }
}
?>