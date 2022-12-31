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

    <title>Me</title>
    <style>
        .banner-image {
            background-image: url(img/bg2.jpg);
            background-size: cover;
        }
    </style>
</head>

<body style="">
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3" style="background-color: #0F0E0E">
        <div class="container">
            <a href="#first" class="navbar-brand">Zona</a>
            <button type="button" class="navbar-toggler" data-bs-target="#navbarNav" data-bs-toggle="collapse"
                aria-controls="navbarNav" aria-expanded="false" aria-lable="Toggle Navbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <div class="mx-auto"></div>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="index.html" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="rent.php" class="nav-link">Rent</a>
                    </li>
                    <li class="nav-item">
                        <a href="#contact" class="nav-link">Gallery</a>
                    </li>
                    <li class="nav-item">
                        <a href="#login" class="nav-link scrollto">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a href="login.php" class="nav-link">Login</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>

    <div class="container pt-5 pb-5">
        <section id="rent" class="w-100 d-flex justify-content-center align-items-center" style="">
            <div class="content text-center">
                <div class="container">
                    <h1 class="text-capitalize mb-3 mb-md-5 font-weight-bold text-center pt-5">Field Schedule
                    </h1>
                    <div class="input-group mb-4">
                        <i class="bi bi-calendar-date input-group-text"></i>
                        <input type="text" class="datepicker_input form-control" placeholder="Select a date" required
                            aria-label="Date">
                    </div>
                    <button type="submit" class="btn btn-light">Search</button>
                </div>
            </div>
        </section>
    </div>
    <section id="rent" class="w-100 d-flex justify-content-center align-items-center" style="">
        <div class="container">
            <div class="row" style="position: relative;">
                <div class="col-12 col-md-6 col-lg-4 pb-4">
                    <div class="card position-relative">
                        <img class="card-img-top" src="../uploaded_img/<?= $fetch_products['gambar']; ?>" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title"><?= $fetch_products['nama']; ?></p></h5>
                            <p class="card-text">
                                <li><span>Rp. </span><?php echo " " . number_format($fetch_products['price-siang'],0,',','.'); ?><span></span></li>
                                <li><span>Rp. </span><?php echo " " . number_format($fetch_products['price-malam'],0,',','.'); ?><span></span></li>
                                <p class="card-text"><?= $fetch_products['type'];?>
                                </p>
                            <a class="btn button-6">Lihat Selengkapnya</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 pb-4">
                    <div class="card position-relative no-border" style="background-color: #434242; border:none;">

                    </div>
                </div>
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