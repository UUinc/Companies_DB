<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Companies Database</title>
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

  <!-- Script for SMTP -->
  <script src="https://smtpjs.com/v3/smtp.js"></script>
  <script type="text/javascript">
      
      var file;
      var dataUri;

      function sendEmail() 
      {
          var email_success_counter = 0;
          var emails_length = 0;

          var emails = document.getElementsByClassName("company_email");
          
          for(let i=0; i<=emails.length; i++)
          {
              var email;
              //this piece of line is to send an email to the sender
              //to be asure of the email was sent successully
              if(i == emails.length)
              {
                  email = document.getElementById("username").value;

                  //don't count your email
                  email_success_counter--;
                  emails_length--;
              }
              else
              {
                  email = emails[i].innerHTML;
              }

              if(email != "")
              {
                  //count how much emails exist
                  emails_length++;

                  //send a regular email without attachment
                  if(file == null)
                  {
                      Email.send({
                      Host : "smtp.elasticemail.com",
                      Username : document.getElementById("username").value,
                      Password : document.getElementById("password").value,
                      To : email,
                      From : document.getElementById("username").value,
                      Subject : document.getElementById("subject").value,
                      Body : document.getElementById("message").value
                      }).then(function (message) {
                          email_success_counter++;
                          showSuccessMessage(email_success_counter, emails_length);
                      });
                  }
                  else //send email with attachment
                  {
                      Email.send({
                      Host : "smtp.elasticemail.com",
                      Username : document.getElementById("username").value,
                      Password : document.getElementById("password").value,
                      To : email,
                      From : document.getElementById("username").value,
                      Subject : document.getElementById("subject").value,
                      Body : document.getElementById("message").value,
                      Attachments : [
                          {
                              name : file.name,
                              data : dataUri
                          }]
                      }).then(function (message) {
                          email_success_counter++;
                          showSuccessMessage(email_success_counter, emails_length);
                      });
                  }
              }
          }
      }
      
      //upload attachment
      function uploadFileToServer()
      {
          file = event.srcElement.files[0];
          var reader = new FileReader();
          reader.readAsBinaryString(file);
          reader.onload = function () {
              dataUri = "data:" + file.type + ";base64," + btoa(reader.result);
          };
          reader.onerror = function() {
              console.log('there are some problems');
          };
      }

      //show success message
      function showSuccessMessage(email_success_counter, emails_length)
      {
          hideSuccessMessage();
          
          var para = document.createElement("p");
          para.className = "message-output";
          para.innerHTML = "Your message has been sent. Thank you! ("+email_success_counter+"/"+emails_length+")";
          document.getElementById("success_message").appendChild(para);
      }

      function hideSuccessMessage()
      {
          //look if the child already exist
          var element = document.getElementsByClassName("message-output")[0];
          if(element != null)
          {
              element.remove();
          }
      }
  </script>

</head>

<body>
  <!-- ======= php file ======= -->
  <?php require_once 'connect.php'; ?>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.php">YAHYA LAZREK</a></h1>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto " href="admin.php">Admin</a></li>
          <li><a class="nav-link scrollto" href="tutorial.php">Tutorial</a></li>
          <li><a class="getstarted scrollto" href="#footer">SEND EMAIL</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">
        <h2>Companies Database</h2>
      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Database Table Filter ======= -->
    <section class="contact">
      <div class="container">
        <div class="mt-5 mt-lg-0 d-flex align-items-stretch">
          <form action="index.php" method="POST" class="php-email-form">
            <div class="row">
              <div class="form-group col-md-5">
                <label for="name">Industry</label>
                <select id="industry" name="industry" class="form-control">
                  <option value="0">All</option>
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
              <div class="form-group col-md-5">
                <label for="name">City</label>
                <select id="city" name="city" class="form-control">
                  <option value="0">All</option>
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
              <div class="form-group col-md-2">
                <br>
                <input type="submit" name="filter_btn" value="filter"/>
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>

    <!-- ======= Database Table ======= -->
    <section class="inner-page">
      <div class="container">
        <?php
          if($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['filter_btn']))
          {
              GetIndustry();
              GetCity();
          }
          function GetIndustry()
          {
              if(isset($_POST['filter_btn']))
              {
                  $industry = $_POST['industry']; 
                  return $industry;         
              }
              return 0;
          }
          function GetCity()
          {
              if(isset($_POST['filter_btn']))
              {
                  $city = $_POST['city']; 
                  return $city;               
              }
              return 0;
          }
          
          $industry = GetIndustry();
          $city = GetCity();

          //preserve set selected option
          echo "<script>
                  document.getElementById(\"industry\").value = ".$industry.";
                  document.getElementById(\"city\").value = ".$city.";
                </script>";

          if($industry == 0 and $city == 0)
          {
              $sql = "SELECT * FROM companies ORDER BY company_name";
              $comapnies_number = "SELECT COUNT(*) FROM companies";
          }
          elseif($industry == 0)
          {
              $sql = "SELECT * FROM companies WHERE city_id = ".$city." ORDER BY company_name";
              $comapnies_number = "SELECT COUNT(*) FROM companies WHERE city_id = ".$city;
          }
          elseif($city == 0)
          {
              $sql = "SELECT * FROM companies WHERE industry_id = ".$industry." ORDER BY company_name";
              $comapnies_number = "SELECT COUNT(*) FROM companies WHERE industry_id = ".$industry;
          }
          else
          {
              $sql = "SELECT * FROM companies WHERE industry_id = ".$industry." and city_id = ".$city." ORDER BY company_name";
              $comapnies_number = "SELECT COUNT(*) FROM companies WHERE industry_id = ".$industry." and city_id = ".$city;
          }
          
          //get the number of companies in db
          $result = mysqli_query($link, $comapnies_number);
          $number = mysqli_fetch_array($result);
          echo "<p class=\"text-center\">companies found : ".$number['COUNT(*)']."</p>";
            
          //get records from db
          $result = mysqli_query($link, $sql) or die(mysqli_error($link));
        
          echo "<div style=\"overflow-x:auto;\">";
          echo "<table class=\"table_deco\">";
          //header of the table
          echo "<tr>
                  <th>Company Name</th>
                  <th>Industry</th>
                  <th>City</th>
                  <th>Email</th>
                  <th>Address</th>
                  <th>Telephone</th>
                  <th>Website</th>
                </tr>";
          
          while($row = mysqli_fetch_array($result))
          {
              //get the name of the industry
              $sql = "SELECT * FROM industry WHERE industry_id = ".$row['industry_id'];
              $industry = mysqli_query($link, $sql) or die(mysqli_error($link));
              $industry = mysqli_fetch_assoc($industry);

              //get the name of the city
              $sql = "SELECT * FROM city WHERE city_id = ".$row['city_id'];
              $city = mysqli_query($link, $sql) or die(mysqli_error($link));
              $city = mysqli_fetch_assoc($city);

              echo "<tr>";
              echo "<td>".$row['company_name']."</td>";
              echo "<td>".$industry['industry_name']."</td>";
              echo "<td>".$city['city_name']."</td>";
              echo "<td class=\"company_email\"><a href=\"mailto:".$row['email']."\">".$row['email']."</a></td>";
              echo "<td>".$row['address']."</td>";
              echo "<td>".$row['telephone']."</td>";
              echo "<td><a href=\"".$row['website']."\" target=\"_blank\">".$row['website']."</a></td>";
              echo "</tr>";
          }
          echo "</table>";
          echo "</div>";
        ?>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6">
            <h4>Send an email to every company in the table above</h4>
            <p>To be able to send emails you have to sign in <a href="https://www.smtpjs.com/" target="_blank">smtpJS</a> / For a small tutorial <a href="tutorial.php">click here</a></p>
          </div>
        </div>
      </div>
    </div>

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">
        <div class="mt-5 mt-lg-0 d-flex align-items-stretch">
          <form action="#footer" method="post" role="form" class="php-email-form">
            <div class="row">
              <div class="form-group col-md-6">
                <label for="name">Username</label>
                <input type="email" name="username" class="form-control" id="username" required>
              </div>
              <div class="form-group col-md-6">
                <label for="name">Password</label>
                <input type="password" class="form-control" name="password" id="password" required>
              </div>
            </div>
            <div class="form-group">
              <label for="name">Subject</label>
              <input type="text" class="form-control" name="subject" id="subject" onchange="hideSuccessMessage()" required>
            </div>
            <div class="form-group">
              <label for="name">Attachment</label>
              <input type="file" class="form-control" name="filename" id="myFile" onchange="uploadFileToServer()" onchange="hideSuccessMessage()">
            </div>
            <div class="form-group">
              <label for="name">Message</label>
              <textarea class="form-control" name="message" id="message" rows="10" oninput="hideSuccessMessage()" required></textarea>
            </div>
            <div class="my-3">
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your message has been sent. Thank you!</div>
              <div id="success_message"></div>
            </div>
            <div class="text-center"><button type="button" onclick="sendEmail()" onclick="hideSuccessMessage()">Send</button></div>
          </form>
        </div>
      </div>

      </div>
    </section><!-- End Contact Section -->

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
