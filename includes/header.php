
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>UBoiGhar</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.html">
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/fontawesome-all.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/meanmenu.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <!-- header-start -->
    <header id="home">
        <div class="header-area">
            <!-- header-top -->
            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-12">
                            <div class="header-contact-info d-flex">
                                <div class="header-contact header-contact-phone">
                                    <span class="ti-headphone"></span>
                                    <p class="phone-number">+01309080748</p>
                                </div>
                                <div class="header-contact header-contact-email">
                                    <span class="ti-email"></span>
                                    <p class="email-name">support.uboighar@gmail.com</p>
                                </div>
                            </div>
                        </div>
                        <!--top header social icon-->
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                            <div class="header-social-icon-list">
                                <ul>
                                    <li><a href="#"><span class="ti-facebook"></span></a></li>
                                    <li><a href="#"><span class="ti-twitter-alt"></span></a></li>
                                    <li><a href="#"><span class="ti-instagram"></span></a></li>
                                    <li><a href="#"><span class="ti-google"></span></a></li>
                                    <li><a href="#"><span class="ti-pinterest"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /end header-top -->
            <!-- header-bottom -->
            <div class="header-bottom-area header-sticky" style="transition: .6s;">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-2 col-lg-2 col-md-6 col-6">
                            <div class="logo">
                                <a href="index.php">
                                    <img src="img/logo/uboighar.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-10 col-lg-10 col-md-6 col-6">
                            <div class="header-bottom-icon f-right">
                                <ul>
                                    <li class="toggle-search-icon"><a href="#"><span class="ti-search"></span>
                                            <div class="toggle-search-box">
                                                <form action="index.php?#products" id="searchbox" method="post">
                                                    <input placeholder="Search" type="text">
                                                    <button class="button-search" type="submit"><span class="ti-search"></span></button> 
                                                    

                                                </form>
                                                
                                            </div>

                                        </a>

                                    </li>
                                    <li class="shopping-cart"><a href="cart.php"><span class="ti-shopping-cart"></span>
                                            <span class="shopping-counter"><?php echo "3"; ?></span>
                                        </a></li>
                                   <li class="registration" id="user_li_id">
                                    <?php


                                    
                                    if(empty($_COOKIE['login_user']))
                                    {
                                        
                                        echo '  <a href="" class="" data-toggle="modal" data-target="#modalLRForm"><span class="ti-user"></span>
                                            </a>';
                                        
                                        
                                    }else{
                                        
                                        echo '<a data-toggle="modal" href="#myModal"><span class="ti-user"></span>
                                            </a>';
                                    }


                                    ?>
                                  </li>
                                </ul>
                            </div>
                            <div class="main-menu f-right">
                                <nav id="mobile-menu" style="display: block;">
                                    <ul>
                                        <li>
                                            <a href="index.php" class="actived">BUY BOOK</a>
                                        </li>

                                        <li>
                                            <a href="sellbook.php">SELL BOOK</a>
                                            <!--<ul class="submenu">
                                                <li>
                                                    <a href="event.html">Events 01</a>
                                                </li>
                                                <li>
                                                    <a href="event_details.html">Events Details</a>
                                                </li>
                                            </ul>-->
                                        </li>
                                        <li>
                                            <a href="requestbook.php">REQUEST BOOK</a>
                                            <!--<ul class="submenu">
                                                <li>
                                                    <a href="course.html">Courses</a>
                                                </li>
                                                <li>
                                                    <a href="course_details.html">Course Details</a>
                                                </li>
                                            </ul>-->
                                        </li>
                                        <li>
                                            <a href="earnmoney.php">EARN MONEY</a>
                                        </li>
                                        <!--<li>
                                            <a href="itclub.php">IT CLUB</a>
                                        </li>-->
                                        <!--<li>
                                            <a href="blog.html">BLOG</a>
                                            <ul class="submenu">
                                                <li>
                                                    <a href="blog.html">Blog Single</a>
                                                </li>
                                                <li>
                                                    <a href="blog-details.html">Blog Details</a>
                                                </li>
                                            </ul>
                                        </li>-->
                                        <li>
                                            <a href="about.php">PAGES</a>
                                            <ul class="submenu">
                                                <li>
                                                    <a href="about.php">About Us</a>
                                                </li>
                                                <li>
                                                    <a href="contact.php">Contact Us</a>
                                                </li>
                                                <li>
                                                    <a href="event.php">Events</a>
                                                </li>
                                                <!--<li>
                                                    <a href="advisors.html">Advisors</a>
                                                </li>
                                                <li>
                                                    <a href="advisors_details.html">Advisors Details</a>
                                                </li>-->
                                                <li>
                                                    <a href="faq.php">FAQ</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile-menu"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /end header-bottom -->
        </div>
    </header>
    <!-- header-end -->

    <!-- Modal of login and register-->
    <!--Modal: Login / Register Form-->
<div class="modal fade" id="modalLRForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog cascading-modal" role="document">
    <!--Content-->
    <div class="modal-content">

      <!--Modal cascading tabs-->
      <div class="modal-c-tabs">

        <!-- Nav tabs -->
        <ul class="nav nav-tabs md-tabs tabs-2 light-blue darken-3" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#panel7" role="tab"><i class="fas fa-user mr-1"></i>
              Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#panel8" role="tab"><i class="fas fa-user-plus mr-1"></i>
              Register</a>
          </li>
        </ul>

        <!-- Tab panels -->
        <div class="tab-content">
          <!--Panel 7-->
          <div class="tab-pane fade in show active" id="panel7" role="tabpanel">

            <!--Body-->
            <div class="modal-body mb-1">
                 <form action="user_login.php" method="post">  
                      <div class="md-form form-sm mb-5">
                        <i class="fas fa-envelope prefix"></i>
                        <input type="email" id="modalLRInput10" class="form-control form-control-sm validate" name="user_email">
                        <label data-error="wrong" data-success="right" for="modalLRInput10">Your email</label>
                      </div>

                      <div class="md-form form-sm mb-4">
                        <i class="fas fa-lock prefix"></i>
                        <input type="password" id="modalLRInput11" class="form-control form-control-sm validate" name="user_password">
                        <label data-error="wrong" data-success="right" for="modalLRInput11">Your password</label>
                      </div>
                      <div class="text-center mt-2">
                        <button class="btn btn-info" name="submit" type="submit">Log in <i class="fas fa-sign-in ml-1"></i></button>
                      </div>
                </form>
            </div>
            <!--Footer-->
            <div class="modal-footer">
              <div class="options text-center text-md-right mt-1">
                <p>Not a member? <a href="#" class="blue-text">Sign Up</a></p>
                <p>Forgot <a href="#" class="blue-text">Password?</a></p>
              </div>
              <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Close</button>
            </div>

          </div>
          <!--/.Panel 7-->

          <!--Panel 8-->
          <div class="tab-pane fade" id="panel8" role="tabpanel">

            <!--Body-->
            <div class="modal-body">
              <form action="user_register.php" method="post">
                    <div class="md-form form-sm mb-1">
                        <label data-error="wrong" data-success="right" for="modalLRInput10">Your Full Name</label>
                        <input type="text" id="modalLRInput10" class="form-control form-control-sm validate" name="user_full_name">
                        
                      </div>  
                      <div class="md-form form-sm mb-1">
                        <label data-error="wrong" data-success="right" for="modalLRInput10"> User Name</label>
                        <input type="text" id="modalLRInput10" class="form-control form-control-sm validate" name="username">
                        
                      </div> 
                      <div class="md-form form-sm mb-1">
                        <label data-error="wrong" data-success="right" for="modalLRInput10">Your email</label>
                        <input type="email" id="modalLRInput10" class="form-control form-control-sm validate" name="user_email">
                        
                      </div>
                      <div class="md-form form-sm mb-1">
                        <label data-error="wrong" data-success="right" for="modalLRInput10">Your Phone Number</label>
                        <input type="text" id="modalLRInput10" class="form-control form-control-sm validate" name="user_phone">
                        
                      </div> 

                      <div class="md-form form-sm mb-1">
                        <label data-error="wrong" data-success="right" for="modalLRInput11">Your password</label>                       
                        <input type="password" id="modalLRInput11" class="form-control form-control-sm validate" name="user_password">
                        
                      </div>
                      <div class="text-center mt-2">
                        <button class="btn btn-info" name="submit" type="submit">Sign Up <i class="fas fa-sign-in ml-1"></i></button>
                      </div>
                </form>
            </div>
            <!--Footer-->
            <div class="modal-footer">
              
              <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Close</button>
            </div>
          </div>
          <!--/.Panel 8-->
        </div>

      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
<!--Modal: Login / Register Form-->

<!-- Modal profile -->
<div class="modal fade" id="myModal">
<div class="modal-dialog">
  <div class="modal-content">
    
    <div class="modal-body">
      <table>
          <thead>
          </thead>
          <tbody class="table">
             <tr>
                    <td>User Id</td>


                    <td><?php echo $_COOKIE['id'] ?> </td>
                  
              </tr>
              <tr>
                    <td>Full Name</td>


                    <td><?php echo $_COOKIE['name']?> </td>
                  
              </tr>
              <tr>
                  <td>User Name</td>
                  <td><?php echo $_COOKIE['login_user']?></td>
              </tr>
                <tr>
                  <td>Email</td>
                  <td><?php echo $_COOKIE['email']?></td>
              </tr>
                <tr>
                  <td>Phone Number</td>
                  <td><?php echo $_COOKIE['phone']?></td>
              </tr>
              
                <tr>
                  <td>Enrolling Type</td>
                  <td><?php echo $_COOKIE['type']?></td>
              </tr>
          </tbody>
      </table>
      <div class="log_out">
        
           <a href="logout.php" class="dropdown-item nav-link  text-light "><span class="fa fa-sign-out"> logout</span></a>
        
          
      </div>
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    </div>
  </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
