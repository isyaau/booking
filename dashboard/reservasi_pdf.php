<?php include 'template/header.php';
if (!isset($_SESSION['isLoggedIn'])) {
    echo '<script>window.location="login.php"</script>';
}

?>
<!DOCTYPE html>
<html>

<head>
    <title>CETAK PRINT DATA RESERVASI</title>
</head>

<body>
     
    <center>
         
        <h2>DATA LAPORAN RESERVASI</h2>
        <h4>RESTORAN</h4>
         
    </center>
    <table border="1" style="width: 100%">
        <tr>
            <th width="1%">No</th>
            <th>No. Reservasi</th>
            <th>Nama</th>
            <th>No Hp</th>
            <th>Tanggal</th>
            <th>Waktu</th>
            <th width="5%">Total</th>
        </tr>
        <?php
        $count = 1;
        include 'dbCon.php';
        $con = connect();
        $res_id = $_SESSION['id'];
        $sql = "SELECT * FROM `reservasi` WHERE res_id = '$res_id'  ORDER BY make_date DESC;";
        $result = $con->query($sql);
        foreach ($result as $r) {
        ?>
            <tr>
                <td class="center hidden-phone"><?php echo $count; ?></td>
                <td class="center hidden-phone"><?php echo $r['booking_id']; ?></td>
                <td><?php echo $r['name']; ?></td>
                <td><?php echo $r['phone']; ?></td>
                <td><?php echo $r['booking_date']; ?></td>
                <td><?php echo $r['booking_time']; ?></td>
                <td>Rp.<?php echo $r['bill']; ?> </td>
                <td class="center hidden-phone">
                    <?php
                    $status = $r['status'];
                    if ($status == 0) {
                    ?>
                        <p class="text-danger">Rejected</p>
                    <?php } else { ?>
                        <p class="text-success">Confirmed</p>
                    <?php } ?>
                </td>
            </tr>
        <?php
        }
        ?>
    </table>
     
    <script>
        window.print();
    </script>
     
</body>

</html>