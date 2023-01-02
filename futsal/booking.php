<?php
require('koneksi.php');
if (isset($_POST['register'])) {
  $id = $_POST['id'];
  $nama = $_POST['field'];
  $tanggal = $_POST['tanggal'];
  $jam = $_POST['jam-mulai'];
  $jamx = $_POST['jam-akhir'];
  $harga = $POST['price'];


  $q = mysqli_query($koneksi, "SELECT*FROM field WHERE jam-awal='$jam', jam-akhir='$jamx', tanggal='$tanggal' ");
  $cek = mysqli_num_rows($q);
  copy($temp, "img/fileBooking/" . $image_files);
  if ($cek == 0) {
    $query = "INSERT INTO field VALUES(null, '$nama', '$nama','$tanggal', '$jam','$jamx','$harga')";
    $result = mysqli_query($koneksi, $query);
    header('Location: booking.php');
    if ($query) {
      $alert = "<div class='alert alert-success'> anda berhasil </div>";
    }
  } else {
    $alert = "<div class='alert alert-danger'> JAM SUDAH DI BOOKING </div>";
  }
  // query memasukkan data 
}
date_default_timezone_set('Asia/Jakarta');
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
  <link href="css/custom.css" rel="stylesheet" />
  <link
    href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&amp;display=swap"
    rel="stylesheet">
  <title>Me</title>
</head>

<body>
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3" style="background-color: #0F0E0E;">
    <div class="container">
      <a href="#first" class="navbar-brand" style="">Zona</a>
      <button type="button" class="navbar-toggler" data-bs-target="#navbarNav" data-bs-toggle="collapse"
        aria-controls="navbarNav" aria-expanded="false" aria-lable="Toggle Navbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" style="" id="navbarNav">
        <div class="mx-auto"></div>
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="index.php" class="nav-link" style="">Home</a>
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
          <li class="nav-item">
            <a href="login.php" class="nav-link" style="">Login</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <section id="bookform" class="w-100 vh-100 d-flex justify-content-center align-items-center" style="">
    <div class="container">
      <div class="content">
        <div class="">
          <h1>Booking Form</h1>
          <div class="row pt-5">
            <div class="col-8">
              <div class="card px-4 py-5">
                <form>
                  <div class="row">
                    <div class="col pb-3">
                      <input type="text" class="form-control" placeholder="First name">
                    </div>
                    <div class="col pb-3">
                      <input type="text" class="form-control" placeholder="No.Telp">
                    </div>
                  </div>
                  <div class="form-group pb-3">
                    <input class="form-control" id="date" name="date" placeholder="Pilih Tanggal" type="text" />
                  </div>
                  <div class="form-group pb-3">
                    <select class="form-select">
                      <option selected>Jam Mulai</option>
                      <option value="1">07.00</option>
                      <option value="2">08.00</option>
                      <option value="3">09.00</option>
                      <option value="4">10.00</option>
                      <option value="5">11.00</option>
                      <option value="6">12.00</option>
                      <option value="7">13.00</option>
                      <option value="8">14.00</option>
                      <option value="9">15.00</option>
                      <option value="10">16.00</option>
                      <option value="11">17.00</option>
                      <option value="12">18.00</option>
                      <option value="13">19.00</option>
                      <option value="14">20.00</option>
                      <option value="15">21.00</option>
                      <option value="16">22.00</option>
                      <option value="17">23.00</option>
                    </select>
                  </div>
                  <div class="form-group pb-3">
                    <select class="form-select">
                      <option selected>Jam Akhir</option>
                      <option value="1">07.00</option>
                      <option value="2">08.00</option>
                      <option value="3">09.00</option>
                      <option value="4">10.00</option>
                      <option value="5">11.00</option>
                      <option value="6">12.00</option>
                      <option value="7">13.00</option>
                      <option value="8">14.00</option>
                      <option value="9">15.00</option>
                      <option value="10">16.00</option>
                      <option value="11">17.00</option>
                      <option value="12">18.00</option>
                      <option value="13">19.00</option>
                      <option value="14">20.00</option>
                      <option value="15">21.00</option>
                      <option value="16">22.00</option>
                      <option value="17">23.00</option>
                    </select>
                  </div>
                  
                </form>
                <a href="" class="btn">Check</a>
              </div>
            </div>
            <div class="col-4">
              <div class="card px-4 py-4">
                <!-- <img class="card-img-top" src="../uploaded_img/<?= $fetch_products['gambar']; ?>" alt="Card image cap"> -->
                <p>Nama Lapangan</p>
                <p class="card-text">
                  <li><span>Rp. </span>
                    <?php echo " " . number_format($fetch_products['priceSiang'], 0, ',', '.'); ?><span></span>
                  </li>
                  <li><span>Rp. </span>
                    <?php echo " " . number_format($fetch_products['priceMalam'], 0, ',', '.'); ?><span></span>
                  </li>
                <p class="card-text">
                  <?= $fetch_products['tipe']; ?>
                </p>
                <p>waktu</p>
                <a href="" class="btn">Konfimasi Pembayaran</a>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
  </section>
  <script>
    $(document).ready(function () {
      var date_input = $('input[name="date"]'); //our date input has the name "date"
      var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
      var options = {
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
  </script>
  <script src="js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap2.js"></script>
  <script type="text/javascript" src="dtpckr.js"></script>
  <script src='https://cdn.jsdelivr.net/npm/vanillajs-datepicker@1.1.4/dist/js/datepicker-full.min.js'></script>
</body>

</html>