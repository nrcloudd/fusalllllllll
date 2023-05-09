<?php
require("koneksi.php");

session_start();

if (!isset($_SESSION['id'])) {
  $_SESSION['msg'] = 'anda harus login untuk mengakses halaman ini';
  header('Location: login.php');
}
$sesID = $_SESSION['id'];
$sesName = $_SESSION['name'];
$sesLvl = $_SESSION['email'];
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="device-width, intial-scale=1.0">
  <link rel="stylesheet" href="css\bootstrap.min.css">
  <link href="css/responsive.css" rel="stylesheet" />
  <link href="css/card.css" rel="stylesheet" />
  <link href="css/info_section.css" rel="stylesheet" />
  <link
    href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&amp;display=swap"
    rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
  <script
    src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

  <title>ZonaFutsal</title>
  <style>
    .banner-image {
      background-image: url(img/bg2.jpg);
      background-size: cover;
    }
  </style>
</head>

<body>
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3" style="background-color: #A19882">
    <div class="container">
      <a href="#first" class="navbar-brand" style="">ZonaFutsal</a>
      <button type="button" class="navbar-toggler" data-bs-target="#navbarNav" data-bs-toggle="collapse"
        aria-controls="navbarNav" aria-expanded="false" aria-lable="Toggle Navbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" style="" id="navbarNav">
        <div class="mx-auto"></div>
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="admin/template/login.php" class="nav-link" style="">Dashboard</a>
          </li>
          <li class="nav-item">
            <a href="#home" class="nav-link scrollto" style="">Home</a>
          </li>
          <li class="nav-item">
            <a href="rent.php" class="nav-link" style="">Rent</a>
          </li>
          <li class="nav-item">
            <a href="#gallery" class="nav-link" style="">Gallery</a>
          </li>
          <li class="nav-item">
            <a href="#contact" class="nav-link scrollto" style="">Contact</a>
          </li>
          <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                <?php echo $sesName; ?>
              </span>
              <img class="img-profile rounded-circle" src="img/undraw_profile.svg">
            </a>
            <!-- Dropdown - User Information -->
            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
              <a class="dropdown-item" href="#">
                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                Profile
              </a>
              <a class="dropdown-item" href="#">
                <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                Settings
              </a>
              <a class="dropdown-item" href="#">
                <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                Activity Log
              </a>
              <div class="dropdown-divider"></div>
              <a href="logout.php" class="dropdown-item">
                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                Logout
              </a>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <section id="home" class="" style="">
    <div class="content">
      <h1 class="text-capitalize mb-3 mb-md-5 font-weight-bold text-center pt-5"></h1>
      <div class="row px-4 py-4">
        <div class="col-xl-6 col-lg-12 my-5 pb-5" style="">
          <div class="row justify-content-around">
            <div class="col-md-6">
              <img class="card-img-top" src="img/G1.jpeg" alt="Card image cap" style="border-radius: 7%">
            </div>
            <div class="col-md-6 col-lg-5">
              <h2>
                Booking lapangan disini.
              </h2>
              <p>Cari jadwal dan lapangan yang anda butuhkan dengan cara online.</p>
              <a class="btn btn-light" href="rent.php">Cari lapangan</a>
            </div>
          </div>
        </div>
        <div class="col-xl-6 col-lg-12 my-5 pb-5">
          <div class="row justify-content-around">
            <div class="col-md-6">
              <img class="card-img-top" src="img/Sepatu2.png" alt="Card image cap" style="border-radius: 7%">
            </div>
            <div class="col-md-6 col-lg-5">
              <h2>
                Kelengkapan
              </h2>
              <p>Terdapat toko perlengkapan tepat berada di sebelah kasir.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="gallery" class="w-100 justify-content-center align-items-center" style="background-color: #A19882">
    <div class="container">
      <header class="my-5">
        <h1 class="text-white">Gallery</h1>
      </header>
      <div class="row position-relative mb-5">
        <div class="col-12 col-md-6 col-lg-4 mb-4 mr-4">
          <article class="position-relative">
            <img class="card-img-top" src="img/G1.jpeg" alt="Card image cap" style="border-radius: 2%">
          </article>
        </div>
        <div class="col-12 col-md-6 col-lg-4 mb-4 mr-4">
          <article class="position-relative">
            <img class="card-img-top" src="img/G1.jpeg" alt="Card image cap" style="border-radius: 2%">
          </article>
        </div>
        <div class="col-12 col-md-6 col-lg-4 mb-4 mr-4">
          <article class="position-relative">
            <img class="card-img-top" src="img/G1.jpeg" alt="Card image cap" style="border-radius: 2%">
          </article>
        </div>
        <div class="col-12 col-md-6 col-lg-4 mb-4 mr-4">
          <article class="position-relative">
            <img class="card-img-top" src="img/G1.jpeg" alt="Card image cap" style="border-radius: 2%">
          </article>
        </div>
        <div class="col-12 col-md-6 col-lg-4 mb-4 mr-4">
          <article class="position-relative">
            <img class="card-img-top" src="img/G1.jpeg" alt="Card image cap" style="border-radius: 2%">
          </article>
        </div>
        <div class="col-12 col-md-6 col-lg-4 mb-4 mr-4">
          <article class="position-relative">
            <img class="card-img-top" src="img/G1.jpeg" alt="Card image cap" style="border-radius: 2%">
          </article>
        </div>
      </div>
    </div>
  </section>

  <!--map section-->
  <section class="map_section w-100 d-flex justify-content-center align-items-center" style="">
    <div class="container">
      <div class="content text-center my-5">
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3949.326611304893!2d113.72402611404246!3d-8.169812794119679!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd695cfe9894601%3A0xc9639ab1c93a874a!2sZona%20Futsal!5e0!3m2!1sid!2sid!4v1671513668154!5m2!1sid!2sid"
          width="100%" height="50%" style="border:0;" allowfullscreen="" loading="lazy"
          referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>
    </div>
  </section>
  <!--end map secton-->


  <section id="contact" class="w-100 info_section layout_padding content text-center" style="background-color: #0F0E0E">
    <div class="container">
      <div class="social_container text-white">
        <p style="font-size: 14px;" class="pt-4">Merupakan website yang ditujukan untuk wadah bagi orang yang ingin
          menyewa lapangan
          futsal. Dan dibawah adalah contact person yang sudah kami sediakan.</p>
        <div class="social-box">
          <a href="">
            <img src="img/whatsapp.png" alt="" style="height: 25px; width: 25px;">
          </a>

          <a href="">
            <img src="img/telegram.png" alt="" style="height: 25px; width: 25px;">
          </a>

          <a href="">
            <img src="img/instagram.png" alt="" style="height: 25px; width: 25px;">
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