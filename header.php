<?php 
define("GUVENLIK",true);?><!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title><?php
include("admin/system/ayar.php");
include("admin/system/fonksiyon.php");
?><?php echo $ayar->site_title; ?></title>
<meta name="keywords" content="<?php echo $ayar->site_meta; ?>" />
<meta name="Title" content="<?php echo $ayar->firma_adi; ?>" />
<meta name="page-topic" content="<?php echo $ayar->site_title; ?>" />
<link rel="shortcut icon" href="uploads/logo/<?php echo $ayar->firma_logo; ?>">

	  	
		<link href='https://fonts.googleapis.com/css?family=Raleway:400,200,300,500,600,700,800,900%7COpen+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic%7CLora:400,400italic,700,700italic%7CRoboto+Slab:400,700,300%7CKarla:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css" media="screen">
		<link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css" media="screen">
		<link rel="stylesheet" type="text/css" href="assets/css/simple-line-icons.css" media="screen">
		<link href="assets/css/owl.carousel.css" type="text/css" rel="stylesheet" media="screen">
		<link rel="stylesheet" type="text/css" href="assets/css/global.css" media="screen">
		<link href="assets/css/settings.css" type="text/css" rel="stylesheet" media="screen">
		<link href="assets/css/layers.css" type="text/css" rel="stylesheet" media="screen">
		<link rel="stylesheet" type="text/css" href="assets/css/style.css" media="screen">
		<link rel="stylesheet" type="text/css" href="assets/css/responsive.css" media="screen">
		<link rel="stylesheet" type="text/less" href="assets/css/skin.txt" media="screen">
		
		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.min.js"></script>
		<![endif]-->
		<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-131483088-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-131483088-1');
</script>
<script>

function sayac()
{
	
	gtag("event","click",{event_category:"Arama"})




}



</script>

	</head>
	<body data-ng-app="websiteApp" data-ng-controller="FormController">
		<div class="loader">
  <div class="sk-folding-cube">
  <div class="sk-cube1 sk-cube"></div>
  <div class="sk-cube2 sk-cube"></div>
  <div class="sk-cube4 sk-cube"></div>
  <div class="sk-cube3 sk-cube"></div>
</div>
</div><!-- loader -->
		<!--Page Wrapper Start-->
		<div id="wrapper">
			<!--Header Section Start-->
			<header id="header" class="header-one">
				<div class="primary_header">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-9 col-md-10">
								<nav class="navbar navbar-default">

									<!-- Brand and toggle get grouped for better mobile display -->
									<div class="navbar-header">
										<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
											<span class="sr-only">Menü</span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
										</button>
									</div>
									<!-- Collect the nav links, forms, and other content for toggling -->
									<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
										<ul class="nav navbar-nav">
											<li class="active">
												<a href="index.html">Anasayfa </a>
												
											</li>
										
										<li>
												<a href="calisma-ekibimiz.html"> EKİBİMİZ </a>
											</li>
											<li>
												
												
												
												
												
												                         <?php 
 $haberSorgu = mysql_query("SELECT * FROM sayfalar WHERE durum = 1 ORDER BY id DESC");
 while($haberSonuc = mysql_fetch_object($haberSorgu)){
 ?>   
				  
														<a href="sayfa-detay-<?php echo $haberSonuc->seo;?>.html"><?php echo $haberSonuc->adi;?></a>	
													
												
												
												      <?php }?>
				            
												
												
											</li>
											
												
								
												<li>
												<a href="hizmetler.html"> HİZMETLER </a>
											</li>
											
												<li>
												<a href="haberler.html"> BİLGİ BANKASI & ETKİNLİKLER </a>
											</li>
								
											<li>
												<a href="iletisim.html"> İLETİŞİM </a>
											</li>
										</ul>
			</div><!-- /.navbar-collapse -->

								
								</nav>

							</div>
							<div class="col-xs-12 col-sm-3 col-md-2">

								<a href="iletisim.html" class="sign-up_btn">İLETİŞİM</a>

							</div>

						</div>

					</div>

				</div>

				<div class="main_header">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-3 col-lg-2 logo-wrap" style="position:relative;">
								<a href="http://egitimciozelegitim.com/" ><div style="position: absolute; z-index:0;left:0px; margin-top:-30px;width:280px;  "> <img style="margin-top:-4px; margin-left:15px; " 	width="500px" src="logo.png" alt="logo"></a></div>

							</div>
							<div class="col-xs-12 col-sm-8  col-lg-6  pull-right contact-wrap-header">
								<a href="tel:<?php echo $ayar->firma_tel; ?>" onclick="sayac()" class="call-us"> <span class="glyph-item mega" aria-hidden="true" data-icon="" data-js-prompt="&amp;#xe010;"></span> <span class="call-us-content" style="font-size:15px;"><span>Telefon Numaramız</span> <?php echo $ayar->firma_tel; ?></span> </a>
								<a href="mailto:<?php echo $ayar->firma_email; ?>" class="mail-to"> <span class="glyph-item mega" aria-hidden="true" data-icon="" data-js-prompt="&amp;#xe01f;"></span> <span style="font-size:15px;" class="mail-to-content"><span>EMAİL ADRESİMİZ</span> <?php echo $ayar->firma_email; ?></span> </a>

							</div>

						</div>
					</div>
					</div>

			</header>
			<!--Header Section End-->
