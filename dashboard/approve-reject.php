<!-- approve-reject.php -->
<?php 
	session_start();
   include_once 'dbCon.php';
   $con = connect();  
	//reject 
	if (isset($_GET['breject_id'])) {
		$id =$_GET['breject_id'];
		$sql ="UPDATE reservasi SET status = 0 WHERE id = '$id';";
		// include_once 'dbCon.php';
		// $con = connect();
		if ($con->query($sql) === TRUE) {
		echo '<script>alert("Rejected.")</script>';
		echo '<script>window.location="booking-list.php"</script>';
	    } else {
			echo "Error: " . $sql . "<br>" . $con->error;
		} 
	}

	// approve booking request
	if (isset($_GET['bapprove_id'])) {
		$id =$_GET['bapprove_id'];
		// include_once 'dbCon.php';
		// $con = connect();
		$sql ="UPDATE reservasi SET status = 1 WHERE id = '$id';";
		
		$sql2 ="SELECT `id`, `c_id`, (SELECT `nama` FROM `user` WHERE user.id= reservasi.c_id) as username,(SELECT `email` FROM `user` WHERE user.id= reservasi.c_id) as email FROM reservasi WHERE id = '$id';";
		$result= $con->query($sql2);
		foreach ($result as $r ) {
			$cname = $r['username'];
			$email = $r['email'];

			// $email = "gardensentani12@gmail.com";
		}
		if ($con->query($sql) === TRUE) {
			include 'mailSender.php'; 
			$mail->Body = '<html><body>
	                Hello '.$cname.' . <br>
					Your booking is confirmed by restaurent. <br>
					Thank You.
	                </body></html>'; 
	            $mail->addAddress($email, "Booking Approve");
	            if($mail->send()) {
	            	echo  '<script>alert("Booking Confirmed.")</script>';
	                echo '<script>window.location="booking-list.php"</script>';
	            }else{
	                echo  '<script>alert("mail not send")</script>';
	                 echo '<script>window.location="booking-list.php"</script>';
	            } 
		
	    } else {
			echo "Error: " . $sql . "<br>" . $con->error;
		} 
	}
 

?>
 
 