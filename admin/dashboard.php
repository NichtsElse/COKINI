<?php

require 'dbconnect.php';
require 'cek.php';
?>
<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Admin Dashboard| Cokini</title>
	<link rel="stylesheet" type="text/css" href="assets/css/admin.css">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
	<!-- sidebar -->
	<div class="sidebar">
		<div class="logo-details">
			<i class='bx bxl-c-plus-plus'></i>
			<span class="logo-name">Cokini</span>
		</div>
		<ul class="nav-links">
			<li>
				<a href="dashboard.php">
					<i class='bx bx-grid-alt'></i>
					<span class="link_name">Dashboad</span>
				</a>
			</li>
			<li>
				<a href="#">
					<i class='bx bx-donate-heart' ></i>
					<span class="link_name">Kelola Donasi</span>
				</a>
			</li>
			<li>
				<div class="icon-link">
					<a href="#">
						<i class='bx bx-collection'></i>
						<span class="link_name">Kelola Usaha</span>
					</a>
					<i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu">
					<li><a href="kategori.php">Kategori</a></li>
					<li><a href="produk.php">Produk</a></li>
					<li><a href="payment.php">Metode Pembayaran</a></li>			
				</ul>
			</li>
			<li>
				<a href="user.php">
					<i class='bx bxs-user-account'></i>
					<span class="link_name">Kelola User</span>
				</a>
			</li>
			<li>
		<div class="profile-details">
			<div class="profile-content">
				<img src="assets/images/admin.jpg" alt="profile">
			</div>
			<div class="name-job">
				<div class="profile-name">Admin</div>
				<div class="job">Cokini</div>
			</div>
			<a href="logout.php">
				<i class='bx bx-log-out'></i>
			</a>
		</div>
		</li>
	</ul>
	</div> 
	
	<script>		
		let arrow = document.querySelectorAll(".arrow");
		for (var i = 0; i < arrow.length; i++) {
			arrow[i].addEventListener("click", (e)=>{
			let arrowParent = e.target.parentElement.parentElement;
			arrowParent.classList.toggle("showMenu");
			});
		}

		let sidebar = document.querySelectorAll(".sidebar");
		console.log(sidebar);

	</script>
	
	
</body>
</html>
