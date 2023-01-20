<!-- booking-list.php -->
<?php include 'template/header.php';
if (!isset($_SESSION['isLoggedIn'])) {
	echo '<script>window.location="login.php"</script>';
}

?>

<body>
	<section class="body">

		<!-- start: header -->
		<?php include 'template/top-bar.php'; ?>
		<!-- end: header -->

		<div class="inner-wrapper">
			<!-- start: sidebar -->
			<?php include 'template/left-bar.php'; ?>
			<!-- end: sidebar -->

			<section role="main" class="content-body">
				<header class="page-header">
					<h2>Reservasi</h2>

					<div class="right-wrapper pull-right">
						<ol class="breadcrumbs">
							<li>
								<a href="index.php">
									<i class="fa fa-home"></i>
								</a>
							</li>
							<li><span>Reservasi</span></li>
							<li><span>List Reservasi</span></li>
						</ol>

						<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
					</div>
				</header>

				<!-- start: page -->


				<section class="panel">
					<header class="panel-heading">
						<div class="panel-actions">
							<a href="#" class="fa fa-caret-down"></a>
							<a href="#" class="fa fa-times"></a>
						</div>

						<h2 class="panel-title">Semua Reservasi</h2>
					</header>
					<div class="panel-body">
						<a href="reservasi_pdf.php" target="_blank" class="btn btn-info">CETAK</a><br><br>
						<table class="table table-bordered table-striped mb-none" id="datatable" data-swf-path="assets/vendor/jquery-datatables/extras/TableTools/swf/copy_csv_xls_pdf.swf">
							<thead>
								<tr>
									<th>No</th>
									<th>No. Reservasi</th>
									<th>Nama</th>
									<th>No Hp</th>
									<th>Tanggal</th>
									<th>Waktu</th>
									<th>Total</th>
									<th class="hidden-phone">Status</th>
									<th class="hidden-phone">Aksi</th>
									<th class="hidden-phone">View</th>
								</tr>
							</thead>
							<tbody>
								<?php
								$count = 1;
								include 'dbCon.php';
								$con = connect();
								$res_id = $_SESSION['id'];
								$sql = "SELECT * FROM `reservasi` WHERE res_id = '$res_id'  ORDER BY make_date DESC;";
								$result = $con->query($sql);
								foreach ($result as $r) {
								?>
									<tr class="gradeX">
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
										<td class="center hidden-phone">
											<?php
											if ($status == 1) {
											?>
												<a href="approve-reject.php?breject_id=<?php echo $r['id']; ?>&booking-number=<?php echo $r['booking_id']; ?>" class="btn btn-danger" onclick="if (!Done()) return false; ">Reject</a>
											<?php } else { ?>
												<a href="approve-reject.php?bapprove_id=<?php echo $r['id']; ?>&booking-number=<?php echo $r['booking_id']; ?>" class="btn btn-success" onclick="if (!Done()) return false; ">Confirm</a>
											<?php } ?>
										</td>
										<td class="center hidden-phone">
											<a href="invoice.php?booking-number=<?php echo $r['booking_id']; ?>" class="btn btn-primary">View</a>
										</td>
									</tr>
								<?php $count++;
								} ?>
							</tbody>
						</table>
					</div>
				</section>


				<!-- end: page -->
			</section>
		</div>

		<?php include 'template/right-bar.php'; ?>

	</section>
	<script type="text/javascript">
		function Done() {
			return confirm("Are you sure?");
		}
	</script>

	<?php include 'template/script-res.php'; ?>
</body>

</html>