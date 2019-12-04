<html>
<head>
	<title></title>
</head>
	<body> <center>
	<?php
	$conn=mysql_connect("localhost","root","") or die ("koneksi gagal");
	mysql_select_db("dblatihan",$conn);
	
	$strSQL="select * from tbbuku where kode='$_GET[vkode]'";
	$qry=mysql_query($strSQL,$conn) or die ("query salah");
	$row=mysql_fetch_array($qry);
	?>
	<form action ="prosesedit.php" method="POST">
	<pre> <!-- (preformatted text) -->
	Kode 	 : <input type ="text" name="txtkode" value="<?php echo $row['kode'];?>" readonly> <tr>
	Judul 	: <input type ="text" name="txtjudul" value="<?php echo $row['judul'];?>"><tr>
	Tahun  	: <input type ="text" name="txttahun" value="<?php echo $row['tahun'];?>"><tr>
	<tr>
	<input type="submit" value="Simpan Kembali">
	</pre>
	</form>
		</table>
    <td>
    <a href="tampil.php">Kembali ke daftar buku</a>
	</body>
</html>