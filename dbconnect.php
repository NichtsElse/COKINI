<?php 
session_start();
// isi nama host, username mysql, dan password mysql anda
$conn = mysqli_connect("localhost","root","","cokini");

if(!$conn){
	echo "gagal konek database menn";
} else {
	
};

?>