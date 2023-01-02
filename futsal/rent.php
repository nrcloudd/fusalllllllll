<?php
require('koneksi.php');
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
    <link href="css/custom.css" rel="stylesheet" />
    <link href="css/info_section.css" rel="stylesheet" />

    <link href="fontawesome-free/css/all.min.css" rel="stylesheet">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/vanillajs-datepicker@1.1.4/dist/css/datepicker.min.css'>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&amp;display=swap"
        rel="stylesheet">
    <!-- Vanilla Datepicker JS -->
    <script src='https://cdn.jsdelivr.net/npm/vanillajs-datepicker@1.1.4/dist/js/datepicker-full.min.js'></script>

    <title>ZonaFutsal</title>
    <style>
        .banner-image {
            background-image: url(img/bg2.jpg);
            background-size: cover;
        }
    </style>
    
</head>

<body style="">
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3" style="background-color: #A19882">
        <div class="container">
            <a href="#first" class="navbar-brand">Zona Futsal</a>
            <button type="button" class="navbar-toggler" data-bs-target="#navbarNav" data-bs-toggle="collapse"
                aria-controls="navbarNav" aria-expanded="false" aria-lable="Toggle Navbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <div class="mx-auto"></div>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="home.php" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="rent.php" class="nav-link">Rent</a>
                    </li>
                    <li class="nav-item">
                        <a href="home.php#gallery" class="nav-link scrollto">Gallery</a>
                    </li>
                    <li class="nav-item">
                        <a href=home.php#contact class="nav-link scrollto">Contact</a>
                    </li>
                    <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $sesName; ?></span>
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
              <a href="login.php" class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                Logout
              </a>
            </div>
          </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container pt-5 pb-5">
        <section id="rent" class="w-100 d-flex justify-content-center align-items-center" style="">
            <div class="content text-center">
                <div class="container pt-5">
                    <h1 class="text-capitalize mb-3 mb-md-5 font-weight-bold text-center pt-5">Pilih Lapangan
                    </h1>
                </div>
            </div>
        </section>
    </div>
    <section id="rent" class="w-100 d-flex justify-content-center align-items-center" style="">
    <div class="container">
    <div class="row" style="position: relative;">
        <?php $ambil = $koneksi->query("SELECT * FROM field") ; ?>
        <?php while($perproduk = $ambil->fetch_assoc()){ ?>
                <div class="col-12 col-md-6 col-lg-4 pb-4">
                    <div class="card position-relative">
                        <img class="card-img-top" src="img/<?= $perproduk['gambar']; ?>" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title"><?= $perproduk['nama']; ?></p></h5>
                            <p class="card-text">
                                <span>Harga: Rp. </span><?php echo " " . number_format($perproduk['priceMalam'],0,',','.'); ?><span></span>
                                <p class="card-text"><?= $perproduk['tipe'];?>
                                </p>
                            <a class="btn button-6" href="booking.php?id=<?php echo $perproduk['id']?>">Lihat Selengkapnya</a>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </section>
    
    <script src="js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap2.js"></script>
    <script type="text/javascript" src="dtpckr.js"></script>
    <script src='https://cdn.jsdelivr.net/npm/vanillajs-datepicker@1.1.4/dist/js/datepicker-full.min.js'></script>

</body>

</html>