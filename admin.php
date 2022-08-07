<?php 
    session_start();
    $auth = (isset($_SESSION['auth']) ? $_SESSION['auth'] : false);
    if(!$auth)
    {
        header('location:login.php');
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin - Companies Database</title>
  <meta name="description" content="Companies database, send email to multiple companies at once">
  <meta name="keywords" content="Companies,Database,Morrocan companies, Yahya Lazrek, Morrocan companies database">
  <meta name="author" content="Yahya Lazrek">

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
  <?php require_once 'connect.php'; ?>
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
        <h2>Admin</h2>
        <a href="logout.php">Logout</a>
      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Insert data into database ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">
        <div class="mt-5 mt-lg-0 d-flex align-items-stretch">
          <form action="#" method="post" class="php-email-form">
            <div class="row">
              <div class="form-group col-md-12">
                <label for="name">Company Name</label>
                <input type="text" name="company_name" class="form-control" id="company_name" required>
              </div>
              <div class="form-group col-md-12">
                <label for="name">Industry</label>
                <select id="industry" name="industry" class="form-control">
                    <?php
                        //get the name of the industries
                        $sql = "SELECT * FROM industry ORDER by industry_name";
                        $result = mysqli_query($link, $sql) or die(mysqli_error($link));

                        while($row = mysqli_fetch_array($result))
                        {
                            echo "<option value=\"".$row['industry_id']."\">".$row['industry_name']."</option>";
                        }
                    ?>
                </select> 
              </div>
              <div class="form-group col-md-12">
                <label for="name">City</label>
                <select id="city" name="city" class="form-control">
                    <?php
                        //get the name of the cities
                        $sql = "SELECT * FROM city ORDER by city_name";
                        $result = mysqli_query($link, $sql) or die(mysqli_error($link));
                        
                        while($row = mysqli_fetch_array($result))
                        {
                            echo "<option value=\"".$row['city_id']."\">".$row['city_name']."</option>";
                        }
                    ?>
                </select> 
              </div>
              <div class="form-group col-md-12">
                <label for="name">Email</label>
                <input type="email" class="form-control" name="email" id="email">
              </div>
              <div class="form-group col-md-12">
                <label for="name">Address</label>
                <input type="text" name="address" class="form-control" id="address">
              </div>
              <div class="form-group col-md-12">
                <label for="name">Telephone</label>
                <input type="tel" class="form-control" name="telephone" id="telephone">
              </div>
              <div class="form-group col-md-12">
                <label for="name">Website</label>
                <input type="website" class="form-control" name="website" id="website">
              </div>
              <div class="text-center">
                <input type="submit" name="save_btn" value="save"/>
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>
  </main><!-- End #main -->
  
  <?php
    if($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['save_btn']))
    {
        $comapy_name = GetComapyName();
        $email = GetEmail();
        $address = GetAddress();
        $telephone = GetTelephone();
        $website = GetWebsite();
        $industry_id = GetIndustryId();
        $city_id = GetCityId();

        //test if company name already exist
        $sql = "SELECT count(*) FROM companies WHERE company_name = ?";
        $stmt = mysqli_prepare($link,$sql);
        $stmt->bind_param("s", $comapy_name);
        $stmt->execute();
        $result = $stmt->get_result();
        $data = $result->fetch_assoc();

        if($data['count(*)'] == 0)
        {
            //save this company into the database
            $sql = "INSERT INTO companies (company_id, company_name, email, address, telephone, website, industry_id, city_id) VALUES (NULL, ?, ?, ?, ?, ?, ?, ?)";
            $stmt = mysqli_prepare($link,$sql);
            $stmt->bind_param("sssssss", $comapy_name, $email, $address, $telephone, $website, $industry_id, $city_id);
            $state = $stmt->execute();

            if($state)
            {
                echo "<p class=\"aligncenter\" style=\"color:green\">company info are saved in database<p>";
            }
            else
            {
                echo "<p class=\"aligncenter\" style=\"color:red\">company info are not saved in database<p>";
            }
        }
        else
        {
            //save this company into the database
            $sql = "UPDATE companies SET email = ?, address = ?, telephone = ?, website = ?, industry_id = ?, city_id = ? WHERE company_name = ?";
            $stmt = mysqli_prepare($link,$sql);
            $stmt->bind_param("sssssss", $email, $address, $telephone, $website, $industry_id, $city_id, $comapy_name);
            $state = $stmt->execute();

            if($state)
            {
                echo "<p class=\"aligncenter\" style=\"color:green\">company infos are updated<p>";
            }
            else
            {
                echo "<p class=\"aligncenter\" style=\"color:red\">company infos are not updated<p>";
            }

        }
    }
    function GetComapyName()
    {
        if(isset($_POST['save_btn']))
        {
            $data = $_POST['company_name']; 
            if(IsNullOrEmptyString($data)) return null;
            return $data;         
        }
        return null;
    }
    function GetEmail()
    {
        if(isset($_POST['save_btn']))
        {
            $data = $_POST['email']; 
            if(IsNullOrEmptyString($data)) return null;
            return $data;               
        }
        return null;
    }
    function GetAddress()
    {
        if(isset($_POST['save_btn']))
        {
            $data = $_POST['address']; 
            if(IsNullOrEmptyString($data)) return null;
            return $data;         
        }
        return null;
    }
    function GetTelephone()
    {
        if(isset($_POST['save_btn']))
        {
            $data = $_POST['telephone']; 
            if(IsNullOrEmptyString($data)) return null;
            return $data;               
        }
        return null;
    }
    function GetWebsite()
    {
        if(isset($_POST['save_btn']))
        {
            $data = $_POST['website']; 
            if(IsNullOrEmptyString($data)) return null;
            return $data;         
        }
        return null;
    }
    function GetIndustryId()
    {
        if(isset($_POST['save_btn']))
        {
            $data = $_POST['industry']; 
            return $data;               
        }
        return null;
    }
    function GetCityId()
    {
        if(isset($_POST['save_btn']))
        {
            $data = $_POST['city']; 
            return $data;               
        }
        return null;
    }
    // Function for basic field validation (present and neither empty nor only white space
    function IsNullOrEmptyString($str)
    {
        return (!isset($str) || trim($str) === '');
    }
?>

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