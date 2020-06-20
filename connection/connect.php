<?php
	//Connect to database    
    $servername='d9c88q3e09w6fdb2.cbetxkdyhwsb.us-east-1.rds.amazonaws.com';
    $username='ioz2i6mmtivthmx6';
    $password='az5hz3fmk9ludp1e';
    $dbname = 'nyj2sbh0wlxx3dv9';
    $conn=mysqli_connect($servername,$username,$password,"$dbname");
    if(!$conn){
		die('Could not Connect My Sql:' .mysql_error());
	}
?>
