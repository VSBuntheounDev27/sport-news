<?php
function public_urls()
{
    return P_URL;
}

function public_assets()
{
    return P_ASSETS;
}

function get_public_link()
{
    $p_urls = public_urls();
    $p_assets = public_assets();

    $link = <<<EOT
        <link rel="stylesheet" href="{$p_assets}css/linearicons.css">
		<link rel="stylesheet" href="{$p_assets}css/font-awesome.min.css">
		<link rel="stylesheet" href="{$p_assets}css/bootstrap.css">
		<link rel="stylesheet" href="{$p_assets}css/magnific-popup.css">
		<link rel="stylesheet" href="{$p_assets}css/nice-select.css">
		<link rel="stylesheet" href="{$p_assets}css/animate.min.css">
		<link rel="stylesheet" href="{$p_assets}css/owl.carousel.css">
		<link rel="stylesheet" href="{$p_assets}css/jquery-ui.css">
		<link rel="stylesheet" href="{$p_assets}css/main.css">
		<link rel="stylesheet" href="{$p_urls}resource/lib/fontawesome-free-5.3.1-web/css/all.css">
EOT;
    echo $link;
}

function get_public_script()
{
    $p_assets = public_assets();

    $link = <<<EOT
        <script src="{$p_assets}js/vendor/jquery-2.2.4.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="{$p_assets}js/vendor/bootstrap.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
		<script src="{$p_assets}js/easing.min.js"></script>
		<script src="{$p_assets}js/hoverIntent.js"></script>
		<script src="{$p_assets}js/superfish.min.js"></script>
		<script src="{$p_assets}js/jquery.ajaxchimp.min.js"></script>
		<script src="{$p_assets}js/jquery.magnific-popup.min.js"></script>
		<script src="{$p_assets}js/mn-accordion.js"></script>
		<script src="{$p_assets}js/jquery-ui.js"></script>
		<script src="{$p_assets}js/jquery.nice-select.min.js"></script>
		<script src="{$p_assets}js/owl.carousel.min.js"></script>
		<script src="{$p_assets}js/mail-script.js"></script>
		<script src="{$p_assets}js/main.js"></script>
EOT;
    echo $link;
}

function get_public_header()
{
    $category = run_query('select * from tblcategories', '');
    $p_urls = public_urls();
    $p_assets = public_assets();
    $p_header = <<<EOT

		<header>
        <div class="logo-wrap">
            <div class="container">
                <div class="row justify-content-between align-items-center">
                    <div class="col-lg-4 col-md-4 col-sm-12 logo-left no-padding">
                        <a href="{$p_urls}">
                            <img class="img-fluid" src="{$p_assets}img/logo200x200.png" width="100px" height="100px" alt="">
                        </a>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-12 logo-right no-padding ads-banner">
                        <img class="img-fluid" src="{$p_assets}img/banner-ad.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
        <div class="container main-menu" id="main-menu">
            <div class="row align-items-center justify-content-between">
                <nav id="nav-menu-container">
                    <ul class="nav-menu">
                        <li class="menu-active"><a href="{$p_urls}">Home</a></li>
                        <li class="menu-has-children"><a href="">Sports</a>
                            <ul>
EOT;
    echo $p_header;
    $cate = '';
    foreach ($category as $cat) {
        $id = $cat['id'];
      $cate = $cat['name'];  
      
        echo <<<EOT
        <li><a href="{$p_urls}public/pages/category.php?id={$id}">{$cate}</a></li> 
EOT;
    }

    echo "                                
                        </ul>
                        </li>
                        <li><a href='{$p_urls}public/pages/about.php'>About</a></li>
                        <li><a href='{$p_urls}public/pages/contact.php'>Contact</a></li>
                    </ul>
                </nav><!-- #nav-menu-container -->
                <div class='navbar-right'>
                    <form class='Search'>
                        <input type='text' class='form-control Search-box' name='Search-box' id='Search-box'
                            placeholder='Search'>
                        <label for='Search-box' class='Search-box-label'>
                            <span class='lnr lnr-magnifier'></span>
                        </label>
                        <span class='Search-close'>
                            <span class='lnr lnr-cross'></span>
                        </span>
                    </form>
                </div>
            </div>
        </div>
    </header>
";
}

function get_public_footer()
{
    $p_urls = public_urls();
    $p_assets = public_assets();
    $p_footer = <<<EOT

		<footer class="footer-area section-gap">
        <div class="container">
            <div class="row">
            </div>
            <div class="footer-bottom row align-items-center">
                <p class="footer-text m-0 col-lg-8 col-md-12">
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>
                    document.write(new Date().getFullYear());
                    </script> All rights reserved | This template is made with <i class="fa fa-heart-o"
                        aria-hidden="true"></i> by <a href="#">Buntheoundev</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </p>
                <div class="col-lg-4 col-md-12 footer-social">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-dribbble"></i></a>
                    <a href="#"><i class="fa fa-behance"></i></a>
                </div>
            </div>
        </div>
    </footer>
EOT;
    echo $p_footer;
}

function get_public_topPostArea()
{
    $p_urls = public_urls();
    $p_assets = public_assets();
    $top_post_area = <<<EOT

		<section class="top-post-area pt-10">
            <div class="container no-padding">
                <div class="row small-gutters">
                    <div class="col-lg-8 top-post-left">
                        <div class="feature-image-thumb relative">
                            <div class="overlay overlay-bg"></div>
                            <img class="img-fluid" src="{$p_assets}img/top-post1.jpg" alt="">
                        </div>
                        <div class="top-post-details">
                            <ul class="tags">
                                <li><a href="#">Food Habit</a></li>
                            </ul>
                            <a href="image-post.html">
                                <h3>A Discount Toner Cartridge Is Better Than Ever.</h3>
                            </a>
                            <ul class="meta">
                                <li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
                                <li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
                                <li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 top-post-right">
                        <div class="single-top-post">
                            <div class="feature-image-thumb relative">
                                <div class="overlay overlay-bg"></div>
                                <img class="img-fluid" src="{$p_assets}img/top-post2.jpg" alt="">
                            </div>
                            <div class="top-post-details">
                                <ul class="tags">
                                    <li><a href="#">Food Habit</a></li>
                                </ul>
                                <a href="image-post.html">
                                    <h4>A Discount Toner Cartridge Is Better Than Ever.</h4>
                                </a>
                                <ul class="meta">
                                    <li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
                                    <li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
                                    <li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="single-top-post mt-10">
                            <div class="feature-image-thumb relative">
                                <div class="overlay overlay-bg"></div>
                                <img class="img-fluid" src="{$p_assets}img/top-post3.jpg" alt="">
                            </div>
                            <div class="top-post-details">
                                <ul class="tags">
                                    <li><a href="#">Food Habit</a></li>
                                </ul>
                                <a href="image-post.html">
                                    <h4>A Discount Toner Cartridge Is Better</h4>
                                </a>
                                <ul class="meta">
                                    <li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
                                    <li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
                                    <li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="news-tracker-wrap">
                            <h6><span>Breaking News:</span> <a href="#">Astronomy Binoculars A Great Alternative</a>
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
        </section>
EOT;
    echo $top_post_area;
}

function get_public_latestPost()
{
    $news = run_query("select tblnews.title, tblnews.short_descript, tblnews.featured_image, tblnews.create_at, tblcategories.name, tbluser.username from tblcategories INNER JOIN tblnews ON tblcategories.id = tblnews.category_id  inner join tbluser on tblnews.user_id = tbluser.id", "Error 404!");
    $p_urls = public_urls();
    $p_assets = public_assets();
    $latest_post = <<<EOT

		<div class="latest-post-wrap">
                            <h4 class="cat-title">Latest News</h4>
EOT;
    echo $latest_post;
    $i = 0;
    foreach ($news as $n) {
        $title =  $n['title'];
        $sh_desc =  substr($n['short_descript'], 0, 300);
        $featured_img = $n['featured_image'];
        $user = $n['username'];
        $category = $n['name'];
        $date = $n['create_at'];
        echo <<<EOT
    <div class="single-latest-post row align-items-center">
                                <div class="col-lg-5 post-left">
                                    <div class="feature-img relative">
                                        <div class="overlay overlay-bg"></div>
                                        <img class="img-fluid" src="{$featured_img}" alt="">
                                    </div>
                                    <ul class="tags">
                                        <li><a href="#">{$category}</a></li>
                                    </ul>
                                </div>
                                <div class="col-lg-7 post-right">
                                    <a href="{$p_urls}public/pages/post.php">
                                        <h4>{$title}</h4>
                                    </a>
                                    <ul class="meta">
                                        <li><a href="#"><span class="lnr lnr-user"></span>{$user}</a></li>
                                        <li><a href="#"><span class="lnr lnr-calendar-full"></span>{$date}</a>
                                        </li>
                                        <li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
                                    </ul>
                                    <p class="excert">
                                        {$sh_desc}
                                    </p>
                                </div>
                            </div>
EOT;
        $i++;
        if ($i == 5) break;
    }
    echo "</div>";
    // foreach ($news as $ns) {
    //     echo $n['tblnews.title'] . '<br>';
    //     echo substr($n['tblnews.short_descript'], 0, 300) . '<br>';
    //     echo $n['tbluser.username'] . '<br>';
    // }
}
