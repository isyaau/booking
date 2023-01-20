<?php 
session_start();
session_destroy();
echo '<script>window.location="../dashboard/login.php"</script>';
?>