<?php
session_start();
$loggedin = $_SESSION['user'];
$pword1 = $_SESSION['password1'];
if (!$loggedin) {
 header("location:adminlogin.php");
 }
 if (isset($_POST['logout1'])) {
  session_unset();
   header("location:adminlogin.php");
 
}


?>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Fortfolio Trade Investment || Admin Area </title>
  <link href="//fonts.googleapis.com/css2?family=Barlow:ital,wght@0,300;0,600;0,700;1,400&display=swap"
    rel="stylesheet">
    <link rel = "icon" type = "image/png" href = "assets/images/log9.png">
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style-starter.css">
</head>

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
            <a class="nav-link" href="https://wa.me/2348120912268?text=Hi%20I%20have%20a%20question%20about%20Fortfolio%3A%20/"><span class="fa fa-whatsapp" aria-hidden="true"></span>Help <span class="sr-only">(current)</span></a>
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
              <a class="nav-link" href="https://fortfolio.info">Signals & Training</a>
            </li>
           <li class="nav-item active" >
            <a class="nav-link" href="dashboard.php"><span class="fa fa-male" aria-hidden="true"></span>Dashboard <span class="sr-only">(current)</span></a>
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
  <!-- main-slider -->
  <!--/grids-->
  <style type="text/css">
    .out{
      padding-left: 30px;
    }
  </style>
  <section class="w3l-grids-3 py-5" id="about">
    <div class="container py-md-5 py-3">
      <div class="row bottom-ab-grids align-items-center">

        <div class="col-lg-6 bottom-ab-left">
          <h6 class="sub-titlehny" >Hi Boss, Good day!</h6>
          <h3 class="hny-title">Update or View all investor's data here</p>
        </div>
          <a href="update.php"><button type="submit" class="btn btn-style btn-primary" name="withdraw" class="out"> UPDATE </button></a><div class="clearfix"></div>
          <a href="adminview.php"><button type="submit" class="btn btn-style btn-primary" name="" class="out"> VIEW ALL USERS </button></a>
        <form action = "admin.php" method="post" class="out"> 
            <div class="form-submit text-right">
                   <button type="submit" class="btn btn-style btn-primary" name="logout1">LOGOUT</button>
            </div>
  </form>
        <div class="col-lg-6 bottom-ab-right mt-lg-0 mt-3 pl-lg-4">
          <p span style="color:green"><b>CAUTION!</b></p>
          <p class="mt-3">Please pay extra attention to details as mistakes are easy to make with numbers.</p>
        </div>

      </div>
      
    </div>

  
  </section>
  
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
        <p class="copy-footer-29 text-center">© 2021 Fortfolio. All rights reserved.</p>
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