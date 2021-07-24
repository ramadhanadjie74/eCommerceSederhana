<?php 
session_start();
include "../config/koneksi.php";
?>

<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">

	<!-- Author Meta -->
	<meta name="author" content="CodePixar">

	<!-- Meta Description -->
	<meta name="description" content="">

	<!-- Meta Keyword -->
	<meta name="keywords" content="">

	<!-- meta character set -->
	<meta charset="UTF-8">

	<!-- Site Title -->
	<title>Exotic Fish</title>

	<!-- CSS -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/nouislider.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/main.css">
</head>

<body>

<?php include "header.php"; ?>

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Login/Logup</h1>
					<nav class="d-flex align-items-center">
						<a href="index.php">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">Login/Logup</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Login Box Area =================-->
	<section class="login_box_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid" src="img/login.jpg" alt="">
						<div class="hover">
							<h4>Belum Punya Akun?</h4>
							<p>Ayo daftar dulu di sini.</p>
							<a class="primary-btn" href="logup.php">Log Up</a>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Log In</h3>
						<form class="row login_form" method="POST" action="ceklogin.php">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" name="username" placeholder="Username" value="<?php if(isset($_COOKIE["username"])) { echo $_COOKIE["username"]; } ?>">
							</div>

							<div class="col-md-12 form-group">
								<input type="password" class="form-control" name="password" placeholder="Password">
							</div>

							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="f-option2" value="TRUE" id="rememberme" name="rememberme" <?php if(isset($_COOKIE["username"])) { ?> checked <?php } ?>/>
									<label for="f-option2">Ingat Saya</label>
								</div>
							</div>

							<div class="col-md-12 form-group">
								<button type="submit" class="primary-btn" name="login">Log In</button>
								<a href="#">Forgot Password?</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	</section>
<?php include "footer.php"; ?>

<!-- javascript -->
<script src="js/vendor/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
 crossorigin="anonymous"></script>
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>

<!--gmaps Js-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
<script src="js/gmaps.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>