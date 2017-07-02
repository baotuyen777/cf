
<!DOCTYPE html>
<html lang="en" class="wide wow-animation">
  <head>
    <!-- Site Title-->
    <title>Home</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <script type="text/javascript">
//<![CDATA[
//try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"bfd1dc786743a602fa5eef8430f9f776",petok:"c850b67d9c6dde5d01d7c3bb308c59efd415e5e8-1498576309-1800",zone:"template-help.com",rocket:"0",apps:{"abetterbrowser":{"ie":"7"}}}];!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=85b614c0f6/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
//]]>
</script>
<link rel="icon" href="<?php echo get_template_directory_uri()?>/images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <!--<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto+Mono:300,300italic,400,700">-->
  <link href="https://fonts.googleapis.com/css?family=Farsan&amp;subset=vietnamese" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/style.css">
     <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/main.css">
  </head>
  <body>
    <div class="page">
      <header class="page-header">
        <div class="rd-navbar-wrap">
          <nav data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-sm-device-layout="rd-navbar-fixed" data-md-layout="rd-navbar-static" data-md-device-layout="rd-navbar-fixed" data-lg-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-stick-up-clone="false" data-md-stick-up-offset="40px" data-lg-stick-up-offset="35px" class="rd-navbar rd-navbar-dark">
            <div class="rd-navbar-inner">
              <div class="rd-navbar-panel">
                <button data-rd-navbar-toggle=".rd-navbar-nav-wrap" class="rd-navbar-toggle"><span></span></button>
                <div class="rd-navbar-brand">
                    <a href="<?php echo get_site_url()?>" class="brand-name logo">
                        <img src="<?php echo get_template_directory_uri()?>/images/logo.jpg" alt="logo-crman"  />
                        <span >Cafe CR MAN 
                        <small>Sạch Sẽ Sáng Suốt Sáng Tạo</small></span>
                        
                    </a></div>
              </div>
              <div class="rd-navbar-nav-wrap">
                   <?php
                wp_nav_menu(array(
                    'menu_class' => 'rd-navbar-nav',
                    'container_class' => 'rd-navbar-nav-inner'
                ))
                ?>
<!--                <div class="rd-navbar-nav-inner">
                  <ul class="rd-navbar-nav">
                    <li class="active"><a href="index.html">Home</a>
                    </li>
                    <li><a href="about.html">About</a>
                      <ul class="rd-navbar-dropdown">
                        <li><a href="team.html">Our team</a>
                        </li>
                        <li><a href="testimonials.html">Testimonials</a>
                        </li>
                        <li><a href="faq.html">FAQ</a>
                        </li>
                      </ul>
                    </li>
                    <li><a href="services.html">Services</a>
                    </li>
                    <li><a href="blog.html">Blog</a>
                      <ul class="rd-navbar-dropdown">
                        <li><a href="single-post.html">Single post</a>
                        </li>
                      </ul>
                    </li>
                    <li><a href="shop.html">Shop</a>
                      <ul class="rd-navbar-dropdown">
                        <li><a href="single-product.html">Single product</a>
                        </li>
                        <li><a href="cart.html">Cart</a>
                        </li>
                        <li><a href="checkout.html">Checkout</a>
                        </li>
                      </ul>
                    </li>
                    <li><a href="#">Contacts</a>
                      <ul class="rd-navbar-dropdown">
                        <li><a href="contacts-1.html">Contacts 1</a>
                        </li>
                        <li><a href="contacts-2.html">Contacts 2</a>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </div>-->
              </div>
              <div class="rd-navbar-inner-left">
                <div class="booking-control"><a href="shop.html" class="btn btn-xs btn-circle btn-primary">BUY NOW</a></div>
              </div>
            </div>
          </nav>
        </div>
      </header>
        