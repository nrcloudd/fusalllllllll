<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="device-width, intial-scale=1.0">
  <link rel="stylesheet" href="css\bootstrap.min.css">
  <link href="css/responsive.css" rel="stylesheet" />
  <link href="css/card.css" rel="stylesheet" />
  <link href="css/info_section.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&amp;display=swap" rel="stylesheet">
  <title>Me</title>
  <style>
    .banner-image {
      background-image: url(img/bg2.jpg);
      background-size: cover;
    }
  </style>
</head>

<body>
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3" style="">
    <div class="container">
      <a href="#first" class="navbar-brand">Zona</a>
      <button type="button" class="navbar-toggler" data-bs-target="#navbarNav" data-bs-toggle="collapse"
        aria-controls="navbarNav" aria-expanded="false" aria-lable="Toggle Navbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" style="" id="navbarNav">
        <div class="mx-auto"></div>
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="index.php" class="nav-link">Home</a>
          </li>
          <li class="nav-item">
            <a href="rent.php" class="nav-link">Rent</a>
          </li>
          <li class="nav-item">
            <a href="#gallery" class="nav-link">Gallery</a>
          </li>
          <li class="nav-item">
            <a href="#contact" class="nav-link scrollto">Contact</a>
          </li>
          <li class="nav-item">
            <a href="login.php" class="nav-link">Login</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  
  <section id="home" class="banner-image w-100 vh-100 d-flex justify-content-center align-items-center" style="">
    <div class="content text-center">
      <div class="container">
        <h1 class="text-capitalize mb-3 mb-md-5 font-weight-bold text-center pt-5 text-white">Zona</h1>
        <p class="d-flex justify-content-center align-content-center text-white">Merupakan sebuah website yang
          berfungsi untuk media penyewaan lapangan futsal yang berada di ZONA.<br>
          <br>Futsal adalah permainan bola yang dimainkan oleh dua regu, yang masing- masing beranggotakan lima
          orang. Tujuannya adalah memasukkan bola ke gawang lawan, dengan memanipulasi bola dengan kaki dan
          anggota tubuh lain selain tangan, kecuali posisi kiper.<br>
          <br>Kami juga menjual perlengkapan yang dibutuhkan untuk futsal, tepat di sebelah bagian kasir.
        </p>
      </div>
    </div>
  </section>

  <!--map section-->
  <section class="map_section">
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3949.326611304893!2d113.72402611404246!3d-8.169812794119679!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd695cfe9894601%3A0xc9639ab1c93a874a!2sZona%20Futsal!5e0!3m2!1sid!2sid!4v1671513668154!5m2!1sid!2sid" width="1200" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  </section>
  <!--end map secton-->


  <section id="contact" class="w-100 info_section layout_padding content text-center" style="background-color: black;">
    <div class="container">
      <div class="social_container text-white">
        <p style="font-size: 14px;" class="pt-5">Merupakan website yang ditujukan untuk wadah bagi orang yang ingin
          menyewa lapangan
          futsal. Dan dibawah adalah contact person yang sudah kami sediakan.</p>
        <div class="social-box">
          <a href="">
            <img src="img/whatsapp.png" alt="">
          </a>

          <a href="">
            <img src="img/telegram.png" alt="">
          </a>

          <a href="">
            <img src="img/instagram.png" alt="" />
          </a>
        </div>
      </div>
    </div>
  </section>
  <section id="footer" class="w-100 justify-content-center align-items-center d-flex"
    style="background-color: #444444;">
    <div class="content text-center">
      <p style="font-size: 12px" class="pt-3 text-white">Zona Futsal CopyRight by nrwn.</p>
    </div>
  </section>

  <script src="js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap2.js"></script>
</body>

</html>
