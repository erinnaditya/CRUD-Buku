<html>
<head>
	<title></title>
</head>
	<body> <center>
	<?php
	$conn=mysql_connect("localhost","root","") or die ("koneksi gagal");
	mysql_select_db("dblatihan",$conn);
	
	$strSQL="select * from tbbuku";
	$qry=mysql_query($strSQL,$conn) or die ("query salah");
	?>	
		
		<table border="2">
		<tr>
			<td>Kode</td>
			<td>Judul</td>
			<td>Tahun</td>
			<td>Edit</td>
			<td>Delete</td>
		</tr>
		
	<?php
	while($row=mysql_fetch_array($qry))
	{
		echo "<tr>";
		echo "<td>".$row["kode"]."</td>";
		echo "<td>".$row["judul"]."</td>";
		echo "<td>".$row["tahun"]."</td>";
		echo "<td><a href=edit.php?vkode=".$row["kode"].">EDIT</td>";
		echo "<td><a href=delete.php?vkode=".$row["kode"].">DELETE</td>";
		echo "</tr>";
	}
	?>
		</table>
	<a href="formbuku.php">Input Buku Baru</a>
    <td>
    <a href="caribuku.php">Cari Buku</a>
	</body>
</html>