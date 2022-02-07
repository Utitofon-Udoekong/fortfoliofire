<!doctype html>
<html lang="en">
   <?php
            session_start();
            if(isset($_POST['track'])){
            $trackid = $_POST['emailt'];
        $link = mysqli_connect("localhost", "fortfoli_ajibola1234", "EUNice1958","fortfoli_admin");
            $extract = "SELECT `id`, fname, lname, email, password, phone, bank_name, acc_name, acc_num, amount, investment_date, payouts, ref_code, referrer_code, active, subdate, package, withdraw, exp_date, interest FROM `investors` WHERE `email` = '$trackid'";
            if ($worked = mysqli_query($link, $extract)) {
                if (mysqli_num_rows($worked) == NULL) {
                    $error12 = "<strong><span style = \"color:red\">Sorry, User does not exist!</span></strong>";
                }
                else{
                    $error12 = "<strong><span style = \"color:green\">Query successful!</span></strong>";
                    $trackid = $_SESSION['tracked'];
                    while ($output = mysqli_fetch_assoc($worked)) {
                        $firstname = $output['fname'];
                        $lastname = $output['lname'];
                        $email = $output['email'];
                        $package = $output['package'];
                        $date = $output['subdate'];
                        $accname = $output['acc_name'];
                        $accnum = $output['acc_num'];
                        $referrercode = $output['referrer_code'];
                        $amount = $output['amount'];
                        $active = $output['active'];
                        $payouts = $output['payouts'];
                        $bank = $output['bank_name'];
                        $phone = $output['phone'];
                        $withdraw = $output['withdraw'];
                        $expdate2 = $output['exp_date'];
                        $interest1 = $output['interest'];
                    }
                }
            }
        }
    ?>


<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Fortfolio || Update Investor Data</title>
  <link href="//fonts.googleapis.com/css2?family=Barlow:ital,wght@0,300;0,600;0,700;1,400&display=swap"
    rel="stylesheet">
    <link rel = "icon" type = "image/png" href = "assets/images/log9.png">
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style-starter.css">
</head>

<?php
        if(isset($_POST['update'])){
                        $firstname1 = $_POST['fname'];
                        $email1 = $_POST['mail'];
                        $lastname1 = $_POST['lname'];
                        $package1 = $_POST['package'];
                        $phone1 = $_POST['phone'];
                        $date1 = $_POST['appdate'];
                        $bank1 = $_POST['bank'];
                        $accname1 = $_POST['accname'];
                        $accnum1 = $_POST['accnum'];
                        $referrercode11 = $_POST['referrercode'];
                        $amount1 = $_POST['amount'];
                        $active1 = $_POST['active'];
                        $payouts1 = $_POST['payouts'];
                        $withdraw1 = $_POST['withdraw'];
                        $expdate1 = $_POST['expdate'];
                        $inte = $_POST['inte'];
                    
            
        //  include 'connect.php';
        $link = mysqli_connect("localhost", "fortfoli_ajibola1234", "EUNice1958","fortfoli_admin") or die("could not connect!");
            $updated = "UPDATE `investors` SET `fname` = '$firstname1', `lname` ='$lastname1', `phone` = '$phone1', `package` = '$package1', `email` = '$email1', `subdate` = '$date1', `active` = '$active1', `payouts` = '$payouts1', `referrer_code` = '$referrercode11', `bank_name` = '$bank1', `acc_name` = '$accname1', `acc_num` = '$accnum1', `exp_date` = '$expdate1', `amount` = '$amount1', interest = '$inte' WHERE `email` = '$email1'";
                if (mysqli_query($link, $updated)) {
                    print "<script type = \"text/javascript\"> 
                    alert(\"Details successfully updated!\");
                    </script>";
                }
                else{
                    echo "<script type = \"text/javascript\"> 
                    alert(\"Sorry, failed to update details...\")
                    </script>";
                }

            }
        ?>
<body>
  <!--header-->
  <header id="site-header" class="fixed-top">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-dark stroke">
        <!--<h1><a class="navbar-brand" href="index.html">
          <span class="sub-log">Fort</span>folio
        </a></h1> -->
        <a class="navbar-brand" href="#index.html">
          <img src="/assets/images/log9.png" alt="logo" title="logo" style="height:80px;" />
      </a>
        <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
          data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
          aria-label="Toggle navigation">
          <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
          <span class="navbar-toggler-icon fa icon-close fa-times"></span>
          </span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav mx-lg-auto">
            <li class="nav-item">
              <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.html">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="investment.html">Investments</a>
            </li>
          
            <li class="nav-item">
              <a class="nav-link" href="contact.html">Contact</a>
            </li>
          </ul>
        </div>
        <!-- toggle switch for light and dark theme -->
       
        <div class="mobile-position">
          <nav class="navigation">
            <div class="theme-switch-wrapper">
              <label class="theme-switch" for="checkbox">
                <input type="checkbox" id="checkbox">
                <div class="mode-container py-1">
                  <i class="gg-sun"></i>
                  <i class="gg-moon"></i>
                </div>
              </label>
            </div>
          </nav>
        </div>
        <!-- //toggle switch for light and dark theme -->
      </nav>
    </div>
  </header>
  <!--/header-->
 
<div class="inner-banner">
</div>
<section class="w3l-breadcrumb">
    <div class="container">
        <ul class="breadcrumbs-custom-path">
            <li><a href="#url">Home</a></li>
            <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Admin || Update Investor Details</li>
        </ul>
    </div>
</section>
  <!--/contact-->
  <section class="w3l-contact-11 py-5">
    <div class="contacts-main py-lg-5 py-md-4">
      <div class="title-content text-center">
        <h3 class="hny-title">Update Investor Data</h3>
       <a href = "adminview.php"> <div>
                     <button type="submit"  class="btn btn-style btn-primary" > VIEW ALL INVESTORS</button>
                  </div> </a>
                <br>
      
       <a href = "admin.php"> <div>
                     <button type="submit" id = 'submit' class="btn btn-style btn-primary" > RETURN TO ADMIN HOME</button>
                  </div> </a>
                <hr><br>
    </div>
      <div class="form-41-mian section-gap mt-5">
        <div class="container">
          <div class="d-grid align-form-map">
            <div class="form-inner-cont">
              <form action="update.php" method="post">
                <div class="form-input">
                  <label for="w3lName">Enter Email ID</label>
                  <input type="email" name="emailt" id="w3lName" placeholder="" required=""  />
                </div>
                 <div>
                     <button type="submit" id = 'submit' class="btn btn-style btn-primary" name="track">QUERY</button>
                  </div>
                <hr><br><br>
              </form>
              <form action="update.php" method="post" class="signin-form">
                <?php
                  echo @$error12;
                ?>
                <div class="form-input">
                  <label for="w3lName">Firstname</label>
                  <input type="text" name="fname" id="w3lName" placeholder="" required="" value="<?php echo @$firstname; ?>" />
                </div>
                <div class="form-input">
                  <label for="w3lName">Lastname</label>
                  <input type="text" name="lname" id="w3lName" placeholder="" required="" value="<?php echo @$lastname; ?>" />
                </div>
                <div class="form-input">
                  <label for="w3lName">Phone</label>
                  <input type="number" name="phone" id="w3lName" placeholder="" required=""  value="<?php echo @$phone; ?>"/>
                </div>
                <div class="form-input">
                  <label for="w3lSender">Email (Required)</label>
                  <input type="email" name="mail" id="w3lSender" placeholder="" required="" value="<?php echo @$email; ?>" />
                </div>
                <div class="form-input">
                  <label for="w3lName">Bank Name:</label>
                  <input type="text" name="bank" id="bankname" placeholder="" required="" value="<?php echo @$bank; ?>"/>
                </div>
                <div class="form-input">
                  <label for="w3lName">Account name</label>
                  <input type="text" name="accname" id="w3lName" placeholder="" required="" value="<?php echo @$accname; ?>"/>
                </div>
                <div class="form-input">
                  <label for="w3lName">Account number</label>
                  <input type="number" name="accnum" id="w3lName" placeholder="" required="" value="<?php echo @$accnum; ?>"/>
                </div>

                <div class="form-input">
                  <label for="w3lName">Investment amount (NGN)</label>
                  <input type="number" name="amount" id="w3lName" placeholder="" required="" value="<?php echo @$amount; ?>"/>
                </div>


                <div class="form-input">
                  <label for="w3lName">Referrer code</label>
                  <input type="number" name="referrercode" id="w3lName" placeholder="" / required="" value="<?php echo @$referrercode; ?>" >
               </div>
               <div class="form-input">
                  <label for="w3lName">Activation Status</label>
                  <input type="text" name="active" id="w3lName" placeholder="" / required="" value="<?php echo @$active; ?>" >
               </div>
            
                <div class="form-input">
                  <label for="w3lName">Approved Investment Date:</label>
                  <input type="text" name="appdate" id="w3lName" placeholder="dd-mm-yyyy @ hh:mm:ss"  value="<?php echo @$date; ?>""/>
                </div>
               
               <div class="form-input">
                  <label for="w3lName">Set expiry Date:</label>
                  <input type="text" name="expdate" id="w3lName" placeholder="dd-mm-yyyy @ hh:mm:ss"  value="<?php echo @$expdate2; ?>"/>
                </div>
                
                <div class="form-input">
                  <label for="w3lName">Payouts:</label>
                  <input type="text" name="payouts" id="w3lName" placeholder="number of payouts so far"  value="<?php echo @$payouts; ?>"/>
                </div>
                
                <div class="form-input">
                  <label for="w3lName">Interest:</label>
                  <input type="number" name="inte" id="w3lName" placeholder="interest amount"  value="<?php echo @$interest1; ?>"/>
                </div>
                
                <div>
                     <button type="submit" id = 'submit' class="btn btn-style btn-primary" name="update">UPDATE</button>
                  </div>
              </form>
            </div>
          
          </div>
        </div>
      </div>
      <div class="contant11-top-bg mt-lg-5 mt-4">
        <div class="container">
          <div class="d-grid contact pt-lg-4">
            <div class="contact-info-left d-grid text-left">
              <!--<div class="contact-info mt-4">
                <h4>London Office</h4>
                <p class="mb-3"><label>Address: </label> London, LY-90814 Hill Station 2nd Street</p>
                <p class="mb-3"><label>Email : </label> <a href="mailto:industrie@email.com" class="email">industrie@email.com</a></p>
                <p class="mb-3"><label>Phone : </label> <a href="tel:+1-2345-678-11">+1-2345-678-11</a></p>
                 <p class="mb-3"><label>Hours : </label> Mon-Fri: 8am – 7pm</p>
              </div>
              <div class="contact-info mt-4">
                <h4>Newyork Office</h4>
                <p class="mb-3"><label>Address: </label> Newyork, NY-90814 Hill Station 3rd Street</p>
                <p class="mb-3"><label>Email : </label> <a href="mailto:industrie@email.com" class="email">industrie@email.com</a></p>
                <p class="mb-3"><label>Phone : </label> <a href="tel:+1-2345-678-11">+1-2345-678-11</a></p>
                 <p class="mb-3"><label>Hours : </label> Mon-Fri: 8am – 7pm</p>
              </div>
              <div class="contact-info mt-4">
                <h4>Berlin Office</h4>
                <p class="mb-3"><label>Address: </label> Berlin, BY-90814 Hill Station 4th Street</p>
                <p class="mb-3"><label>Email : </label> <a href="mailto:industrie@email.com" class="email">industrie@email.com</a></p>
                <p class="mb-3"><label>Phone : </label> <a href="tel:+1-2345-678-11">+1-2345-678-11</a></p>
                 <p class="mb-3"><label>Hours : </label> Mon-Fri: 8am – 7pm</p>
              </div>
            </div> -->
          </div>
        </div>
      </div>
  </section>
  <!--//contact-->
  <!--/w3l-footer-29-main-->
  <section class="w3l-footer-29-main">
    <div class="footer-29 py-5">
      <div class="container py-lg-4">
        <div class="row footer-top-29">
          <div class="footer-list-29 col-lg-4">
            <h6 class="footer-title-29">About Us</h6>
            <p>Fortfolio is a leading business/investment company with a specialty in Fund management, Cryptocurrency, and Financial investment services. Our goal is a laser focus on ensuring that a majority of Nigerian youths generate an additional source of income irrespective of their knowledge in any of our investment spectrums and packages. </p>
            <div class="main-social-footer-29 mt-4">
              <a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
              <a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
              <a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
              <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin"></span></a>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 col-sm-4 footer-list-29 footer-2 mt-lg-0 mt-5">

            <ul>
              <h6 class="footer-title-29">Navigation</h6>
              <li><a href="index.html">Home</a></li>
              <li><a href="about.html">About</a></li>
              <li><a href="contact.html">Contact us</a></li>
            </ul>
          </div>
          <div class="col-lg-3 col-md-6 footer-list-29 footer-3 mt-lg-0 mt-5">

            <ul>
              <h6 class="footer-title-29">Services</h6>
              <li><a href="#team">Investment</a></li>
              <li><a href="#insta">Signals and training</a></li>
            </ul>

          </div>
          <div class="col-lg-3 col-md-6 col-sm-8 footer-list-29 footer-1 mt-lg-0 mt-5">
            <h6 class="footer-title-29">Contact Us</h6>
            <ul>
              <li>
                <p><span class="fa fa-map-marker"></span> Road 5, Ikota shopping complex, Ajah lagos</p>
              </li>
              <li><a href="tel:+2348120912268"><span class="fa fa-phone"></span> +2348120912268, +2348070738825</a></li>
              <li><a href="mailto:Support@fortfolio.info" class="mail"><span class="fa fa-envelope-open-o"></span>
                  Support@fortfolio.info</a></li>
            </ul>
          </div>
          <div class="col-lg-12 footer-list-29 footer-4 mt-5">
            <div class="column1 align-self">
              <h6 class="footer-title-29 mb-1">Subscribe to our Newsletter </h6>
              <p>Enter your email and receive the latest news from us.</p>
            </div>
            <div class="column1">
              <form action="#" class="subscribe" method="post">
                <input type="email" name="email" placeholder="Your Email Address" required="">
                <button><span class="fa fa-paper-plane-o pr-1"></span></button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


  <section class="w3l-footer-29-main w3l-copyright">
    <div class="container">
      <div class="bottom-copies">
        <p class="copy-footer-29 text-center">© 2021 Fortfolio. All rights reserved.  </p>
      </div>
    </div>

    <!-- move top -->
    <button onclick="topFunction()" id="movetop" title="Go to top">
      <span class="fa fa-angle-up"></span>
    </button>
    <script>
      // When the user scrolls down 20px from the top of the document, show the button
      window.onscroll = function () {
        scrollFunction()
      };

      function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("movetop").style.display = "block";
        } else {
          document.getElementById("movetop").style.display = "none";
        }
      }

      // When the user clicks on the button, scroll to the top of the document
      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>
    <!-- /move top -->
  </section>
  <!-- Template JavaScript -->
  <script src="assets/js/jquery-3.3.1.min.js"></script>

  <!-- script for testimonials -->
  <script>
    $(document).ready(function () {
      $('.owl-testimonial').owlCarousel({
        loop: true,
        margin: 0,
        nav: true,
        responsiveClass: true,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplaySpeed: 1000,
        autoplayHoverPause: false,
        responsive: {
          0: {
            items: 1,
            nav: false
          },
          480: {
            items: 1,
            nav: false
          },
          667: {
            items: 1,
            nav: true
          },
          1000: {
            items: 1,
            nav: true
          }
        }
      })
    })
  </script>
  <!-- //script for testimonials -->

  <script src="assets/js/theme-change.js"></script>

  <!-- js for portfolio lightbox -->
  <!-- libhtbox -->
  <script src="assets/js/lightbox-plus-jquery.min.js"></script>
  <!-- libhtbox -->
  <script src="assets/js/owl.carousel.js"></script>
  <!-- script for banner slider-->
  <script>
    $(document).ready(function () {
      $('.owl-one').owlCarousel({
        loop: true,
        margin: 0,
        nav: false,
        responsiveClass: true,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplaySpeed: 1000,
        autoplayHoverPause: false,
        responsive: {
          0: {
            items: 1,
            nav: false
          },
          480: {
            items: 1,
            nav: false
          },
          667: {
            items: 1,
            nav: true
          },
          1000: {
            items: 1,
            nav: true
          }
        }
      })
    })
  </script>
  <!-- //script -->
<!-- stats number counter-->
<script src="assets/js/jquery.waypoints.min.js"></script>
<script src="assets/js/jquery.countup.js"></script>
<script>
  $('.counter').countUp();
</script>
<!-- //stats number counter -->

  <!-- disable body scroll which navbar is in active -->
  <script>
    $(function () {
      $('.navbar-toggler').click(function () {
        $('body').toggleClass('noscroll');
      })
    });
  </script>
  <!-- disable body scroll which navbar is in active -->

  <!--/MENU-JS-->
  <script>
    $(window).on("scroll", function () {
      var scroll = $(window).scrollTop();

      if (scroll >= 80) {
        $("#site-header").addClass("nav-fixed");
      } else {
        $("#site-header").removeClass("nav-fixed");
      }
    });

    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
      $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
      if ($(window).width() > 991) {
        $("header").removeClass("active");
      }
      $(window).on("resize", function () {
        if ($(window).width() > 991) {
          $("header").removeClass("active");
        }
      });
    });
  </script>
  <!--//MENU-JS-->

  <script src="assets/js/bootstrap.min.js"></script>
    <!-- Start of HubSpot Embed Code -->
  <script type="text/javascript" id="hs-script-loader" async defer src="//js.hs-scripts.com/19565911.js"></script>
<!-- End of HubSpot Embed Code -->
</body>

</html>