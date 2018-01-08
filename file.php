<?php
	$host = "localhost";
			$user = "root";
			$password = "";
			$datbase  = "distroit";
			mysql_connect($host, $user, $password);
			mysql_set_charset($datbase);

	$sql_query1=mysql_query("SELECT * FROM produk");
	$data = mysql_num_rows($sql_query1);

				$sql_query = mysql_query("SELECT * FROM produk where kode = 5 ");

				$nop = mysql_fetch_array($sql_query);

				$nopnya = $nop['nama'];

				echo "$nopnya";
