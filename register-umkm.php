<?php
require 'dbconnect.php';

if(!isset($_SESSION['log'])){
	
} else {
	header('location:login-admin.php');
};


if(isset($_POST['register']))
	{
		$nama = $_POST['nama'];
		$telp = $_POST['telp'];
		$email = $_POST['email'];
		$pass = password_hash($_POST['pass'], PASSWORD_DEFAULT); 
			  
		$tambahuser = mysqli_query($conn,"insert into umkm (nama, email, password, notelp) 
		values('$nama','$email','$pass','$telp')");
		if ($tambahuser){
		echo " <div class='alert alert-success'>
			Berhasil mendaftar, silakan masuk.
		  </div>
		<meta http-equiv='refresh' content='1; url= login-umkm.php'/>  ";
		} else { echo "<div class='alert alert-warning'>
			Gagal mendaftar, silakan coba lagi.
		  </div>
		 <meta http-equiv='refresh' content='1; url= register-umkm.php'/> ";
		}
		
	};
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		body{
			padding: 0;
			margin: 0;
			background-color: rgba(186, 85 , 211, 0.9);
			background-size: cover;
		}

		.box {
			position: absolute;
			width: 480px;
			background-color: white;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			border-radius: 5px;
			box-shadow: 0 10px 10px 10px rgba(0,0,0,0.2);
		}	
		.overlay {
			position: absolute;
			top: 0;
			width: 100%;
			height: 100%;
			background-color: rgba(0, 0, 0, 0.5);
		}
		.header {
			background-image: url(images/regis1.jpg);
			background-size: cover;
			padding: 90px 30px;
			color: white;
			border-radius: 5px;
		}
		.header p {
			font-size: small;
		}
		.regis-area{
			text-align: center;
			padding: 40px 40px 30px 40px;
		}
		.nama,.email, .password, .telp{
			width: 100%;
			text-align: center;
			padding: 10px 0;
			border-radius: 5px;
			outline: none;
			border: none;
			color: white;
			background-color: rgba(55,10,114,0.5);
			margin-bottom: 15px;
			transition: 0.5s; 
		}
		.nama::placeholder,
		.email::placeholder,
		.password::placeholder, 
		.telp::placeholder{
			color: rgba(255, 255, 255, 0.7);
		}
		.nama:focus,
		.email:focus,
		.password:focus,
		.telp:focus {
			background-color: rgba(55,10,114,0.7);
		}
		.regis{
			width: 150px;
			padding: 10px;
			background-color: rgba(55,10,114,0.9);
			border-radius: 5px;
			font-weight: bold;
			color: white;
			border:none;
			outline: none;
			margin: 10px;
			transition: 0.2s;
			cursor: pointer;
		}
		.regis:hover {
			background-color: #1f0344;
		}
		a{
			display: block;
			font-size: smaller;
			text-decoration: none;
			color: rgba(55,10,114,0.9);
			margin-top: 10px;
		}
	</style>
</head>
<body>
	<div class="overlay"></div>
	<form  method="post" class="box">
		<div class="header">
			<h2>Ayo, daftar COKINI sekarang juga</h2>
			<p>Mari kembangkan UMKM Lokal di indonesia!</p>
		</div>
		<div class="regis-area">
			<input type="text" name="nama" class="nama" placeholder="Nama" required>
			<input type="text" name="email" class="email" placeholder="Email" required>
			<input type="text" name="telp" class ="telp" placeholder="Nomor Telepon" required maxlength="13">
			<input type="password" name="pass" class="password" placeholder="password" required>
			<input type="password" name="pass" class="password" placeholder="Confirm-Password" required>
			<button type="submit" name="register" class="regis" value="register" >Registrasi</button>
			<a href="login-umkm.php">Sudah punya akun?</a>
		</div>
	</form>
</body>
</html>