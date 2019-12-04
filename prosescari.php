<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body> <center>
	<?php
	$vcari=$_POST['combocari'];
	$conn=mysql_connect("localhost","root","") or die ("koneksi gagal");
	mysql_select_db("dblatihan",$conn);
	
	$strSQL="select * from tbbuku where tahun like '%$vcari%' order by judul desc";
	$qry=mysql_query($strSQL,$conn) or die ("query salah");
	?>	
		
		<table border="2">
		<tr><td>Kode</td>
			<td>Judul</td>
			<td>Tahun</td>
		</tr>
		
	<?php
	while($row=mysql_fetch_array($qry))
	{
		echo "<tr>";
		echo "<td>".$row["kode"]."</td>";
		echo "<td>".$row["judul"]."</td>";
		echo "<td>".$row["tahun"]."</td>";
		echo "</tr>";
	}
	?>
		</table>
	<a href="tampil.php">Kembali ke Daftar Buku</a>
	</body>
</body>
</html>