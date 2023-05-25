{{-- <?php
// require('connect.php');
// session_start();

// if (isset($_POST['login'])) {
//     $email = $_POST['Email'];
//     $pass = $_POST['Password'];
//     if (!empty(trim($email)) && !empty(trim($pass))) {
//         $query      = "SELECT * FROM admin WHERE email = '$email'";
//         $result     = mysqli_query($koneksi, $query);
//         $num        = mysqli_num_rows($result);

//         while ($row = mysqli_fetch_array($result)) {
//             $id = $row['id'];
//             $userName = $row['nama'];
//             $userEmail = $row['email'];
//             $passVal = $row['pass'];
//             $userLvl = $row['level'];

//         }

//         if ($num != 0) {
//             if ($userEmail==$email && $passVal==$pass) {
//                 $_SESSION['id'] = $id;
//                 $_SESSION['nama'] = $userName;
//                 $_SESSION['email'] = $UserEmail;
//                 header('Location: dashboard.php');
//             }else{
//                 $error = 'user atau password salah!!';
//                 echo "<script>alert('$error')</script>";
//                 header('Location: login.php');
//             }
//         }else{
//             $error = 'user tidak ditemukan!!';
//             echo "<script>alert('$error')</script>";
//             header('Location: login.php');
//         }
//     }else{
//         $error = 'Data tidak boleh kosong!!';
//         echo "<script>alert('$error')</script>";
//         header('Location: login.php');
//       }
//   }
  ?> --}}

<!doctype html>
<html lang="en">
  <head>
  	<title>Login 08</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="../loginForm/css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Login #08</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
		      	<div class="icon d-flex align-items-center justify-content-center">
		      		<span class="fa fa-user-o"></span>
		      	</div>
		      	<h3 class="text-center mb-4">Have an account?</h3>
						<form action="#" class="login-form" method="POST">
		      		<div class="form-group">
		      			<input type="text" class="form-control rounded-left" placeholder="Username" name="Email" required>
		      		</div>
	            <div class="form-group d-flex">
	              <input type="password" class="form-control rounded-left" placeholder="Password" name="Password" required>
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
	            		<label class="checkbox-wrap checkbox-primary">Remember Me
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right">
									<a href="#">Forgot Password</a>
								</div>
	            </div>
	            <div class="form-group">
	            	<button type="submit" name="login" class="btn btn-primary rounded submit p-3 px-5">Get Started</button>
	            </div>
	          </form>
	        </div>
				</div>
			</div>
		</div>
	</section>

	<script src="../loginForm/js/jquery.min.js"></script>
  <script src="../loginForm/js/popper.js"></script>
  <script src="../loginForm/js/bootstrap.min.js"></script>
  <script src="../loginForm/js/main.js"></script>

	</body>
</html>

