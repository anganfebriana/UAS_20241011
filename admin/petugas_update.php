<?php 
include '../koneksi.php';
$id  = $_POST['id'];
$nama  = $_POST['nama'];
$nim = $_POST['nim'];
$email = $_POST['email'];
$jurusan = $_POST['jurusan'];
$pwd = $_POST['password'];
$password = md5($_POST['password']);

// cek gambar
$rand = rand();
$allowed =  array('gif','png','jpg','jpeg');
$filename = $_FILES['foto']['name'];
$ext = pathinfo($filename, PATHINFO_EXTENSION);

if($pwd=="" && $filename==""){
	mysqli_query($koneksi, "update petugas set mahasiswa_nama='$nama', mahasiswa_nim='$nim',mahasiswa_email='$email',mahasiswa_jurusan='$jurusan' where petugas_id='$id'");
	header("location:petugas.php");
}elseif($pwd==""){
	if(!in_array($ext,$allowed) ) {
		header("location:petugas.php?alert=gagal");
	}else{
		move_uploaded_file($_FILES['foto']['tmp_name'], '../gambar/petugas/'.$rand.'_'.$filename);
		$x = $rand.'_'.$filename;
		mysqli_query($koneksi, "update petugas set mahasiswa_nama='$nama', mahasiswa_nim='$nim', mahasiswa_email='$email',mahasiswa_jurusan='$jurusan' petugas_foto='$x' where petugas_id='$id'");		
		header("location:petugas.php?alert=berhasil");
	}
}elseif($filename==""){
	mysqli_query($koneksi, "update petugas set mahasiswa_nama='$nama', mahasiswa_nim='$nim',mahasiswa_email='$email',mahasiswa_jurusan='$jurusan',petugas_password='$password' where petugas_id='$id'");
	header("location:petugas.php");
}

