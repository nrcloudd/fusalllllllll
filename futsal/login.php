<?php
require('koneksi.php');
session_start();

if (isset($_POST['register'])) {
  $userName = $_POST['username'];
  $userMail = $_POST['email'];
  $userTlp = $_POST['notelp'];
  $userPass = $_POST['password'];
  // $check = $_POST['checkbox'];


  // if ($check == 1) {
  //   $cookie_name = "cookie_email";
  //   $cookie_value = $email;
  //   $cookie_time = time() + (60 * 60 * 24 * 30);
  //   setcookie($cookie_name, $cookie_value, $cookie_time, "/");

  //   $cookie_name = "cookie_password";
  //   $cookie_value = md5($password);
  //   $cookie_time = time() + (60 * 60 * 24 * 30);
  //   setcookie($cookie_name, $cookie_value, $cookie_time, "/");
  //   header("location:login.php");
  // }

  $query = "INSERT INTO member VALUES (null,'$userName', '$userMail','$userPass','$userTlp')";
  $result = mysqli_query($koneksi, $query);
  if ($result) {
    echo "<script> alert('selamat kamu berhasil')</script>";
    header('Location: home.html');
    ob_end_flush();
  } else {
    echo "<script> alert('kamu gagal')</script>";
    header('Location: login.php');
    ob_end_flush();
  }
}

if (isset($_POST['login'])) {
  $email = $_POST['Email'];
  $pass = $_POST['Password'];
  // $check = $_POST['checkbox'];


  // if ($checkbox == 1) {
  //   $cookie_name = "cookie_email";
  //   $cookie_value = $email;
  //   $cookie_time = time() + (60 * 60 * 24 * 30);
  //   setcookie($cookie_name, $cookie_value, $cookie_time, "/");

  //   $cookie_name = "cookie_password";
  //   $cookie_value = md5($password);
  //   $cookie_time = time() + (60 * 60 * 24 * 30);
  //   setcookie($cookie_name, $cookie_value, $cookie_time, "/");
  // }
  // header("location:login.php");




  if (!empty(trim($email)) && !empty(trim($pass))) {
    $query = "SELECT * FROM member WHERE email = '$email'";
    $result = mysqli_query($koneksi, $query);
    $num = mysqli_num_rows($result);

    while ($row = mysqli_fetch_array($result)) {
      $id = $row['id'];
      $userName = $row['name'];
      $userEmail = $row['email'];
      $passVal = $row['password'];
      $userTlp = $row['no_tlp'];

    }

    if ($num != 0) {
      if ($userEmail == $email && $passVal == $pass) {
        $_SESSION['id'] = $id;
        $_SESSION['name'] = $userName;
        $_SESSION['email'] = $UserEmail;
        header('Location: home.php');
      } else {
        $error = 'user atau password salah!!';
        echo "<script>alert('$error')</script>";
        header('Location: login.php');
      }
    } else {
      $error = 'user tidak ditemukan!!';
      echo "<script>alert('$error')</script>";
      header('Location: login.php');
    }
  } else {
    $error = 'Data tidak boleh kosong!!';
    echo "<script>alert('$error')</script>";
  }

  if (isset($_POST['regis'])) {
    $nama = $_POST['username'];
    $email = $_POST['Email'];
    $tlp = $_POST['Notelp'];
    $pass = $_POST['Password'];

    $queryy = "INSERT INTO member VALUES ('','$nama','$email','$tlp','$pass','$level')";

    $result = mysqli_query($koneksi, $queryy);
    $success = "Data Berhasil Ditambahkan";
    $error = "Data Gagal Ditambahkan";
    if ($result) {
      echo "<script>
          Swal.fire({
          icon: 'success',
          title: ' $success',
                  }).then((result) => {
          window.location.href = 'employe.php';
      })
            </script>";
    } else {
      echo "<script>
      Swal.fire({
          icon: 'error',
          title: ' $eror',
                  }).then((result) => {
          window.location.href = 'employe.php';
      })
            </script>";
    }
  }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <link
    href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&amp;display=swap"
    rel="stylesheet">

  <!-- jQuery CDN Link -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <title>Login & Register</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background-image: url(img/background1.webp);
      background-size: cover;
      background-attachment: fixed;

    }

    /* align items center vertically and horizontally  */
    .container {
      display: flex;
      justify-content: center;
      align-items: center !important;
      height: 100vh;
    }

    .form {
      width: 350px;
      height: 450px;
      background-color: rgba(41, 39, 39, 0.3);
      box-shadow: 0 5px 30px black;
    }

    .btn button {
      padding: 3px;
      margin: 30px 0px 40px 30px;
      border-style: none;
      background-color: transparent;
      color: beige;
      font-size: 18px;
      font-weight: 550;
    }

    .formGroup {
      display: flex;
      justify-content: center;
    }

    .formGroup input {
      border: none;
      width: 80%;
      border-bottom: 2px solid white;
      padding: 10px;
      margin-bottom: 20px;
      font-size: 14px;
      font-weight: bold;
      background-color: transparent;
      color: white;
    }

    input:focus {
      outline: none !important;
      border-bottom: 2px solid rgba(255, 255, 255, 0.815);
      font-size: 17px;
      font-weight: bold;
      color: white;
    }

    ::placeholder {
      color: white;
    }

    .checkBox {
      display: flex;
      justify-content: center;
      margin: 16px !important;
    }

    #checkbox {
      margin-right: 10px;
      height: 15px;
      width: 15px;
    }

    .text {
      color: rgb(199, 197, 197);
      font-size: 13px;
    }

    .btn2 {
      text-decoration: none;
      text-align: center;
      padding: 10px;
      width: 150px;
      border-radius: 20px;
      background-color: #444444;  
      border-style: none;
      color: white;
      font-weight: 600;
    }

    .btn2:hover {
      background-color: rgba(10, 136, 43, 0.5);
    }

    .btn button:hover {
      border-bottom: 2px solid rgb(91, 243, 131);
    }

    /* hide signup form */
    .login {
      display: none;
    }

    /* Login form code */
    .login {
      margin-top: 40px;
    }

    .login .checkBox {
      margin-top: 30px !important;
    }
  </style>
</head>

<body>

  <div class="container">
    <div class="form">
      <div class="btn">
        <button class="signUpBtn" name="regis">Register</button>
        <button class="loginBtn">Log in</button>
      </div>
      <form class="signUp" action="" method="POST">
        <div class="formGroup">
          <input type="text" name="username" id="userName" placeholder="User Name" autocomplete="off">
        </div>
        <div class="formGroup">
          <input type="email" name="email" placeholder="Email ID" required autocomplete="off">
        </div>
        <div class="formGroup">
          <input type="text" name="notelp" id="notelp" placeholder="No.Telp" required autocomplete="off">
        </div>
        <div class="formGroup">
          <input type="password" name="password" id="password" placeholder="Password" required autocomplete="off">
        </div>
        <!-- <div class="checkBox">
          <input type="checkbox" name="checkbox" id="checkbox">
          <span class="text">I agree with term & conditions</span>
        </div> -->
        <div class="formGroup">
          <button type="submit" class="btn2" name="register">Register</a>
        </div>
      
      </form>

      <!------ Login Form -------- -->

      <form class="login" action="" method="POST">

        <div class="formGroup">
          <input type="email"  placeholder="Email ID" name="Email" required autocomplete="off">
        </div>
        <div class="formGroup">
          <input type="password" name="Password" id="password" placeholder="Password" required autocomplete="off">

        </div>
        <div class="formGroup">
          <button type="submit" class="btn2" name="login">Login</button>
        </div>
        
      </form>

    </div>
  </div>
  
  <script src="login.js"></script>
</body>
</html>
