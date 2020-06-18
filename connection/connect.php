<?php
	//Connect to database    
    $servername='sql200.epizy.com';
    $username='epiz_26033140';
    $password='gfxldtrgS1clB3';
    $dbname = "epiz_26033140_hrm_project";
    $conn=mysqli_connect($servername,$username,$password,"$dbname");
    if(!$conn){
		die('Could not Connect My Sql:' .mysql_error());
	}
?>