<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/style.css">
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
      background-image: url(../img/background1.webp);
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