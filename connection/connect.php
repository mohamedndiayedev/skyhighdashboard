<?php
	//Connect to database    
    $url = (getenv("mysql://j2jujn9suxbx1su1:irzbk1tormac7dh3@d9c88q3e09w6fdb2.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/ncgwmoi6ngjlg75t"));
    $servername='d9c88q3e09w6fdb2.cbetxkdyhwsb.us-east-1.rds.amazonaws.com';
    $username='j2jujn9suxbx1su1';
    $password='irzbk1tormac7dh3';
    $dbname = 'ncgwmoi6ngjlg75t';
    $conn=mysqli_connect($servername,$username,$password,"$dbname");
    if(!$conn){
		die('Could not Connect My Sql:' .mysql_error());
	}
?>
