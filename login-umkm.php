<?php
require 'dbconnect.php';

if(!isset($_SESSION['log'])){
	
} else {
	header('location:admin/dashboard.php');
};




	if(isset($_POST['login']))
	{
	$email = mysqli_real_escape_string($conn,$_POST['email']);
	$pass = mysqli_real_escape_string($conn,$_POST['pass']);
	$queryuser = mysqli_query($conn,"SELECT * FROM umkm WHERE email='$email'");
	$cariuser = mysqli_fetch_assoc($queryuser);
		
		if( password_verify($pass, $cariuser['password']) ) {
			$_SESSION['id'] = $cariuser['adminid'];
			$_SESSION['notelp'] = $cariuser['notelp'];
			$_SESSION['name'] = $cariuser['nama'];
			$_SESSION['log'] = "Logged";
			header('location:admin/dashboard.php');
		} else {
			echo 'Username atau password salah';
			header("location:login-umkm.php");
		}		
	}
// login admin -> email:admin@gmail.com, pw:admin
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
            background-image: url(images/login1.jpg);
            background-size: cover;
            padding: 90px 30px;
            color: white;
            border-radius: 5px;
        }
        .header p {
            font-size: small;
        }
        .login-area{
            text-align: center;
            padding: 50px 50px 30px 50px;
        }
        .email, .password{
            width: 100%;
            text-align: center;
            padding: 13px 0;
            border-radius: 5px;
            outline: none;
            border: none;
            color: white;
            background-color: rgba(55,10,114,0.5);
            margin-bottom: 15px;
            transition: 0.5s; 
        }
        .email::placeholder,
        .password::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }
        .email:focus,
        .password:focus {
            background-color: rgba(55,10,114,0.7);
        }
        .login{
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
        .login:hover {
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
            <h1>Selamat Datang di Halaman Login UMKM</h1>
            <p>Mari investasikan danamu ke UMKM Lokal di indonesia!</p>
        </div>
        <div class="login-area">
            <input type="text" name="email" class="email" placeholder="Email" required>
            <input type="password" name="pass" class="password" placeholder="Password" required>
            <button type="submit" name="login" class="login" value="login" >Login</button>
            <a href="register-umkm.php">Belum punya akun?</a>
            <a href="login.php">Login Sebagai Pengguna</a>
        </div>
    </form>
</body>
</html>