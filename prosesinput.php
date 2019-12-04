<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
	$vkode=$_POST['txtkode'];
	$vjudul=$_POST['txtjudul'];
	$vtahun=$_POST['txttahun'];
	
	$conn=mysql_connect("localhost","root","") or die ("koneksi gagal");
	mysql_select_db("dblatihan",$conn);
	$strSQL="insert into tbbuku(kode,judul,tahun) values ('$vkode','$vjudul','$vtahun')";
	$qry=mysql_query($strSQL) or die ("query salah");
?>


</body>
</html>