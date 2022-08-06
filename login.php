<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Login - Companies Database</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.php">YAHYA LAZREK</a></h1>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto " href="admin.php">Admin</a></li>
          <li><a class="nav-link scrollto" href="tutorial.php">Tutorial</a></li>
          <li><a class="getstarted scrollto" href="index.php">SEND EMAIL</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->

  <main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">
      </div>
    </section><!-- End Breadcrumbs -->
    <!-- ======= Login ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">
        <div class="mt-5 mt-lg-0 d-flex align-items-stretch">
          <form action="#" method="post" role="form" class="php-email-form">
            <div class="row">
              <div class="form-group col-md-5">
                <label for="name">Username</label>
                <input type="text" name="username" class="form-control" id="username" required>
              </div>
              <div class="form-group col-md-5">
                <label for="name">Password</label>
                <input type="password" class="form-control" name="password" id="password" required>
              </div>
              <div class="form-group col-md-2">
                <br>
                <input type="submit" name="login_btn" value="Login" />
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>

    <?php require_once 'connect.php'; ?>
    <?php
        if($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['login_btn']))
        {
            $user = GetUser();
            $password = GetPassword();

            //test if login info is correct 
            $sql = "SELECT count(*) FROM login WHERE user = ? And password = ?";
            $stmt = mysqli_prepare($link,$sql);
            $stmt->bind_param("ss", $user, $password);
            $stmt->execute();
            $result = $stmt->get_result();
            $data = $result->fetch_assoc();

            if($data['count(*)'] == 0)
            {
                echo "<p class=\"aligncenter\" style=\"color:red\">wrong username or password<p>";
            }
            else
            {
                session_start();
                $_SESSION['auth'] = 'true';
                header('location:admin.php');
            }
        }
        function GetUser()
        {
            if(isset($_POST['login_btn']))
            {
                $user = $_POST['username']; 
                return $user;         
            }
            return 0;
        }
        function GetPassword()
        {
            if(isset($_POST['login_btn']))
            {
                $password = $_POST['password']; 
                return $password;               
            }
            return 0;
        }
    ?>

    <div class="space">
    </div>
  </main><!-- End #main -->


  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>Yahya Lazrek</span></strong>. All Rights Reserved
      </div>
      <div class="social-links links">
        <a href="https://twitter.com/yahya_lz" target="_blank" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="https://www.instagram.com/yahya.lz/" target="_blank" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="https://www.linkedin.com/in/yahyalazrek/" target="_blank" class="linkedin"><i class="bx bxl-linkedin"></i></a>
        <a href="https://github.com/UUinc" target="_blank" class="github"><i class="bx bxl-github"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>