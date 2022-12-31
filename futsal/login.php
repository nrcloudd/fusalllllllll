<?php
require('koneksi.php');
?>
<?php
if (isset($_POST['login'])) {
    $email = $_POST['Email'];
    $pass = $_POST['Password'];
    $check = $_POST['checkbox'];

        
    if ($checkbox == 1) {
      $cookie_name = "cookie_email";
      $cookie_value = $email;
      $cookie_time = time() + (60 * 60 * 24 * 30);
      setcookie($cookie_name, $cookie_value, $cookie_time, "/");

      $cookie_name = "cookie_password";
      $cookie_value = md5($password);
      $cookie_time = time() + (60 * 60 * 24 * 30);
      setcookie($cookie_name, $cookie_value, $cookie_time, "/");
    }
    header("location:login.php");
  
    
    if (!empty(trim($email)) && !empty(trim($pass))) {
        $query      = "SELECT * FROM member WHERE email = '$email'";
        $result     = mysqli_query($koneksi, $query);
        $num        = mysqli_num_rows($result);

        while ($row = mysqli_fetch_array($result)) {
            $id = $row['id'];
            $userName = $row['name'];
            $userEmail = $row['email'];
            $userTlp = $row['no_tlp'];
            $passVal = $row['password'];

        }

        if ($num != 0) {
            if ($userEmail==$email && $passVal==$pass) {
                $_SESSION['id'] = $id;
                $_SESSION['name'] = $userName;
                $_SESSION['email'] = $UserEmail;
                header('Location: home.html');
            }else{
                $error = 'user atau password salah!!';
                echo "<script>alert('$error')</script>";
                header('Location: login.php');
            }
        }else{
            $error = 'user tidak ditemukan!!';
            echo "<script>alert('$error')</script>";
            header('Location: login.php');
        }
    }else{
        $error = 'Data tidak boleh kosong!!';
        echo "<script>alert('$error')</script>";
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
  <title>Transparent form</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background-image: url(img/bg2.jpg);
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
        <button class="signUpBtn">Register</button>
        <button class="loginBtn">Log in</button>
      </div>
      <form class="signUp" action="" method="get">
        <div class="formGroup">
          <input type="text" name="username" id="userName" placeholder="User Name" autocomplete="off">
        </div>
        <div class="formGroup">
          <input type="email" name="Email" placeholder="Email ID" name="email" required autocomplete="off">
        </div>
        <div class="formGroup">
          <input type="text" name="Notelp" id="notelp" placeholder="No.Telp" required autocomplete="off">
        </div>
        <div class="formGroup">
          <input type="password" name="Password" id="password" placeholder="Password" required autocomplete="off">
        </div>
        <div class="checkBox">
          <input type="checkbox" name="checkbox" id="checkbox">
          <span class="text">I agree with term & conditions</span>
        </div>
        <div class="formGroup">
          <a type="button" class="btn2" name="register" href="login.php">Register</a>
        </div>

      
      </form>

<?php
if( isset($_POST['register']) ){
    $userName = $_POST['username'];
    $userMail = $_POST['Email'];
    $userTlp = $_POST['Notelp'];
    $userPass = $_POST['Password'];
    $check = $_POST['checkbox'];

        
    if ($checkbox == 1) {
      $cookie_name = "cookie_email";
      $cookie_value = $email;
      $cookie_time = time() + (60 * 60 * 24 * 30);
      setcookie($cookie_name, $cookie_value, $cookie_time, "/");

      $cookie_name = "cookie_password";
      $cookie_value = md5($password);
      $cookie_time = time() + (60 * 60 * 24 * 30);
      setcookie($cookie_name, $cookie_value, $cookie_time, "/");
    }
    header("location:login.php");
  


    $query = "INSERT INTO member VALUES ('', '$userName', '$userMail','$userTlp', '$userPass')";
    $result = mysqli_query($koneksi, $query);
    header('Location: login.php');
}
?>

      <!------ Login Form -------- -->

      <form class="login" action="" method="get">

        <div class="formGroup">
          <input type="email"  placeholder="Email ID" name="Email" required autocomplete="off">
        </div>
        <div class="formGroup">
          <input type="password" name="Password" id="password" placeholder="Password" required autocomplete="off">

        </div>
        <div class="checkBox">
          <input type="checkbox" name="checkbox" id="checkbox">
          <span class="text">Keep me signed in on this device</span>
        </div>
        <div class="formGroup">
          <a type="button" class="btn2" href="home.html">Login</a>
        </div>
        
      </form>

    </div>
  </div>
  
  <script src="login.js"></script>
</body>

</html>