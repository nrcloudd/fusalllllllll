<?php
require('koneksi.php');
if (isset($_POST['login'])) {
    $email = $_POST['username'];
    $pass = $_POST['password'];
    
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
<html>
  <head>
    <meta charset="utf-8">
  <meta name="viewport" content="device-width, intial-scale=1.0">
  <link rel="stylesheet" href="css\bootstrap.min.css">
  <link href="csscoba.css" rel="stylesheet" />
  <link
    href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&amp;display=swap"
    rel="stylesheet">
  <title>coba</title>
  </head>
  <body>
    <div class="login-box">
        <h2>Login</h2>
        <form>
            <div class="user-box">
                <input type="text" name="username" required="">
                <label>Email</label>
            </div>
            <div class="user-box">
                <input type="text" name="password" required="">
                <label>Password</label>
            </div>

            <div class="button-form">
                <a id="submit" href="home.html">Submit</a>

                <div id="Register">
                    Don't have an account?
                    <a href="#">Register</a>
                </div>
            </div>
        </form>
    </div>
  </body>
</html>