<?php define("GUVENLIK",true);?>
<?php
include("system/ayar.php");
include("system/fonksiyon.php");
oturumkontrolana();
?>
<?php 
$mesajSorgu = Sorgu("SELECT * FROM iletisim");
$mesajSonuc = Sonuc($mesajSorgu);
?>
<?php 
$rezSorgu = Sorgu("SELECT * FROM rez");
$ezSonuc = Sonuc($rezSorgu);
?>
<?php 
$BasvuruSorgu = Sorgu("SELECT * FROM ik");
$BasvuruSonuc = Sonuc($BasvuruSorgu);
?>
<?php
if(isset($_GET['cikis'])){
	session_destroy();
	header("Location:anasayfa.html");
}?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Yönetim Paneli</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
    <!-- FontAwesome 4.3.0 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />    
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck for checkboxes and radio inputs -->
    <link href="plugins/iCheck/all.css" rel="stylesheet" type="text/css" />
     <!-- fileUploads -->
     <link rel="stylesheet" type="text/css" href="dist/css/bootstrap-fileupload.min.css" />
      <!-- DATA TABLES -->
    <link href="plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
     <link href="dist/js/iCheck/skins/square/red.css" rel="stylesheet">
     <link href="dist/js/iCheck/skins/square/green.css" rel="stylesheet">
 <!-- Javascript --> 
       
        <link rel="stylesheet" href="assets/css/supersized.css">
      
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="skin-yellow layout-boxed">
    <div class="wrapper">
      
      <header class="main-header">
        <!-- Logo -->
        <a href="anasayfa.html" class="logo"><b>Yönetim</b>Paneli</a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success"><?php echo say($mesajSorgu);?></span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header"><?php echo say($mesajSorgu);?> Mesaj Var</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                     <?php $MesajSorgu = Sorgu("SELECT * FROM iletisim");
					 while($MesajSonuc = Sonuc($MesajSorgu)){?>
                      <li><!-- start message -->
                        <a href="mesaj-oku.html?id=<?php echo $MesajSonuc->id; ?>">
                          <div class="pull-left">
                            <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
                          </div>
                          <h4>
                            <?php echo $MesajSonuc->isim; ?>
                            <small><i class="fa fa-clock-o"></i> <?php echo $MesajSonuc->tarih; ?></small>
                          </h4>
                          <p><?php echo kisalt($MesajSonuc->mesaj,30); ?></p>
                        </a>
                      </li><!-- end message -->
                      <?php }?>
                    </ul>
                  </li>
                  <li class="footer"><a href="mesajlar.html">Tüm Mesajları Gör</a></li>
                </ul>
              </li>
			  
			  
			  
			  
		
			  
			  
		
              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
                <a href="site-ayar.html" class="dropdown-toggle">
                  <i class="fa fa-wrench"></i>
                </a>
              </li>
              <li class="dropdown notifications-menu">
            <a href="?cikis=1" class="dropdown-toggle">
              <i class="fa fa-sign-out"></i>
              <span class="label label-danger">Çıkış</span>
            </a>
          </li>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a target="_blank" href="../anasayfa.html" class="dropdown-toggle">
                  <i class="fa fa-hand-o-right"></i>
                  <span class="hidden-xs">Site Önizleme</span>
                </a>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- sidebar menu: : style can be found in sidebar.less -->
             <?php
				error_reporting(0);
				$sayfa=isset($_GET['sayfa']) ? addslashes($_GET['sayfa']) : "";
				if($sayfa=="sayfa-ekle"){
					$sayfaekle='active';
				}else if($sayfa=="sayfa-listele"){
					$sayfalistele='active';
				}else if($sayfa=="urun-kategori-ekle"){
					$urunkategoriekle='active';
				}else if($sayfa=="urun-kategori-listele"){
					$urunkategorilistele='active';
					}else if($sayfa=="galeri-kategori-ekle"){
					$galerikategoriekle='active';
				}else if($sayfa=="galeri-kategori-listele"){
					$galerikategorilistele='active';
				}else if($sayfa=="slider-ekle"){
					$sliderekle='active';
				}else if($sayfa=="slider-listele"){
					$sliderlistele='active';
					
					
						$hizmetlistele='active';
				}else if($sayfa=="hizmet-ekle"){
					$hizmetekle='active';
				}else if($sayfa=="hizmet-listele"){
					
					
					
							$etkinliklistele='active';
				}else if($sayfa=="etkinlik-ekle"){
					$etkinlikekle='active';
				}else if($sayfa=="etkinlik-listele"){
					
					
					
					
							
						$duyurulistele='active';
				}else if($sayfa=="duyuru-ekle"){
					$duyuruekle='active';
				}else if($sayfa=="duyuru-listele"){
					
					
					
					}else if($sayfa=="proje-kategori-ekle"){
					$projekategoriekle='active';
				}else if($sayfa=="proje-kategori-listele"){
					$projekategorilistele='active';
					
					
					
					
					
					
					
					
					}else if($sayfa=="marka-ekle"){
					$markaekle='active';
				}else if($sayfa=="marka-listele"){
					$markalistele='active';
					
					}else if($sayfa=="proje-ekle"){
					$projeekle='active';
				}else if($sayfa=="proje-listele"){
					$projelistele='active';
					}else if($sayfa=="siparisler"){
					$siparisler='active';
					}else if($sayfa=="siparis-oku"){
					$siparisoku='active';
					
				}else if($sayfa=="urun-ekle"){
					$urunekle='active';
				}else if($sayfa=="urun-listele"){
					$urunlistele='active';
				}else if($sayfa=="galeri-ekle"){
					$galeriekle='active';
				}else if($sayfa=="galeri-listele"){
					$galerilistele='active';
				}else if($sayfa=="katalog-sayfa-ekle"){
					$katalogsayfaekle='active';
				}else if($sayfa=="katalog-sayfa-listele"){
					$katalogsayfalistele='active';
				}else if($sayfa=="on-kapak-duzenle"){
					$onkapakduzenle='active';
				}else if($sayfa=="arka-kapak-duzenle"){
					$arkakapakduzenle='active';
				}else if($sayfa=="site-ayar"){
					$siteayar='active';
				}else if($sayfa=="mesajlar"){
					$mesajlar='active';
					}else if($sayfa=="rezler"){
					$rezler='active';
					}else if($sayfa=="ebulten"){
					$ebulten='active';
				}else if($sayfa=="mesaj-oku"){
					$mesajoku='active';
					}else if($sayfa=="rez-oku"){
					$rezoku='active';
				}else if($sayfa=="yonetici-ekle"){
					$yoneticiekle='active';
				}else if($sayfa=="yonetici-listele"){
					$yoneticilistele='active';
				}else if($sayfa=="haber-ekle"){
					$haberekle='active';
				}else if($sayfa=="haber-listele"){
					$haberlistele='active';
				}else if($sayfa=="anasayfa"){
					$anasayfa='class="aktif"';
				}else{
					$anasayfa='class="aktif"';
					}
			?>
          <ul class="sidebar-menu">
		  <div class="user-panel">
        <div class="pull-left image">
          <img kasperskylab_antibanner="on" src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $ayar->firma_adi; ?></p>
          <a href="yonetici-listele.html"><i class="fa fa-circle text-success"></i> Çevrimiçi</a>
        </div>
      </div>
            <li class="header"></li>
            <!---------------------------------------------------------------------------->
             <!---------------------------------------------------------------------------->
            <li class="treeview">
              <a href="anasayfa.html">
                <i class="fa fa-home"></i>
                <span>Anasayfa</span>
              </a>
            </li>
            <!---------------------------------------------------------------------------->
            <li class="treeview <?php echo $sayfaekle; ?> <?php echo $sayfalistele; ?>">
              <a href="#">
                <i class="fa fa-edit"></i>
                <span>Kurumsal Yönetimi</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="<?php echo $sayfaekle; ?>">
                	<a href="sayfa-ekle.html"><i class="fa fa-circle-o"></i> Sayfa Ekle</a>
                </li>
                <li class="<?php echo $sayfalistele; ?>">
                	<a href="sayfa-listele.html"><i class="fa fa-circle-o"></i> Sayfa Listesi</a>
                </li>
              </ul>
            </li>
            <!---------------------------------------------------------------------------->
                <li class="treeview <?php echo $markaekle; ?> <?php echo $markalistele; ?>">
              <a href="#">
                <i class="fa fa-user"></i>
                <span>Çalışan Yönetimi</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="<?php echo $markaekle; ?>">
                	<a href="marka-ekle.html"><i class="fa fa-circle-o"></i> Çalışan Ekle</a>
                </li>
                <li class="<?php echo $markalistele; ?>">
                	<a href="marka-listele.html"><i class="fa fa-circle-o"></i> Çalışan Listesi</a>
                </li>
              </ul>
            </li>
            <!---------------------------------------------------------------------------->
    <li class="treeview <?php echo $duyuruekle; ?> <?php echo $duyurulistele; ?>">
              <a href="#">
                <i class="fa  fa-comment"></i>
                <span>Veli Yorumları</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="<?php echo $duyuruekle; ?>">
                	<a href="duyuru-ekle.html"><i class="fa fa-circle-o"></i> Yorum Ekle</a>
                </li>
                <li class="<?php echo $duyurulistele; ?>">
                	<a href="duyuru-listele.html"><i class="fa fa-circle-o"></i> Veli Yorumları</a>
                </li>
              </ul>
            </li>
            <!---------------------------------------------------------------------------->
            <li class="treeview <?php echo $haberekle; ?> <?php echo $haberlistele; ?>">
              <a href="#">
                <i class="fa fa-bullhorn"></i> <span>Bilgi  & Etkinlik Yönetimi</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="<?php echo $haberekle; ?>">
                	<a href="haber-ekle.html"><i class="fa fa-circle-o"></i> Etkinlik & Bilgi Ekle</a>
                </li>
                <li class="<?php echo $haberlistele; ?>">
                	<a href="haber-listele.html"><i class="fa fa-circle-o"></i> Etkinlik & Bilgi Listesi</a>
                </li>
              </ul>
            </li>
            <!---------------------------------------------------------------------------->
			<!---------------------------------------------------------------------------->
      
            <!---------------------------------------------------------------------------->
				<!---------------------------------------------------------------------------->

            <!---------------------------------------------------------------------------->
			    <!---------------------------------------------------------------------------->
            <li class="treeview <?php echo $hizmetekle; ?> <?php echo $hizmetlistele; ?>">
              <a href="#">
                <i class="fa  fa-h-square"></i> <span>Hizmet Yönetimi</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="<?php echo $haberekle; ?>">
                	<a href="hizmet-ekle.html"><i class="fa fa-circle-o"></i> Hizmet Ekle</a>
                </li>
                <li class="<?php echo $haberlistele; ?>">
                	<a href="hizmet-listele.html"><i class="fa fa-circle-o"></i> Hizmet Listesi</a>
                </li>
              </ul>
            </li>
            <!---------------------------------------------------------------------------->
			
			
			
	
            <!---------------------------------------------------------------------------->
			          <!---------------------------------------------------------------------------->
            <li class="treeview <?php echo $projekategoriekle; ?> <?php echo $projekategorilistele; ?> <?php echo $projeekle; ?> <?php echo $projelistele; ?>">
              <a href="#">
                <i class="fa fa-laptop"></i> <span>Proje Yönetimi</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
               
                <li class="<?php echo $projeekle; ?>">
                	<a href="proje-ekle.html"><i class="fa fa-circle-o"></i> Proje Ekle</a>
                </li>
                <li class="<?php echo $projelistele; ?>">
                	<a href="proje-listele.html"><i class="fa fa-circle-o"></i> Proje Listesi</a>
                </li>
              </ul>
            </li>
            <!---------------------------------------------------------------------------->
      


 

				<!---------------------------------------------------------------------------->
   	
			
            <li class="treeview <?php echo $urunkategoriekle; ?> <?php echo $urunkategorilistele; ?> <?php echo $urunekle; ?> <?php echo $urunlistele; ?>">
              <a href="#">
                <i class="fa fa-tasks"></i> <span>Referans Yönetimi</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="<?php echo $urunkategoriekle; ?>">
                	<a href="urun-kategori-ekle.html"><i class="fa fa-circle-o"></i> Referans Ekle</a>
                </li>
                <li class="<?php echo $urunkategorilistele; ?>">
                	<a href="urun-kategori-listele.html"><i class="fa fa-circle-o"></i> Referans Listesi</a>
                </li>
             
              </ul>
            </li>
            <!---------------------------------------------------------------------------->
            <li class="treeview <?php echo $sliderekle; ?> <?php echo $sliderlistele; ?>">
              <a href="#">
                <i class="fa fa-picture-o"></i> <span>Slider Yönetimi</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                 
                <li class="<?php echo $sliderekle; ?>">
                	<a href="slider-ekle.html"><i class="fa fa-circle-o"></i> Slider Ekle</a>
                </li>
                <li class="<?php echo $sliderlistele; ?>">
                	<a href="slider-listele.html"><i class="fa fa-circle-o"></i> Slider Listesi</a>
                </li>
              </ul>
            </li>
			<!---------------------------------------------------------------------------->
			
			
			<!---------------------------------------------------------------------------->
		
		
            <!---------------------------------------------------------------------------->
             <li class="<?php echo $mesajlar; ?> <?php echo $mesajoku; ?>">
              <a href="mesajlar.html">
                <i class="fa fa-envelope-o"></i> <span>Mesajlar</span>
              </a>
            </li>
            <!---------------------------------------------------------------------------->
			 <!---------------------------------------------------------------------------->
          
            <!---------------------------------------------------------------------------->
			
			
			
            <li class="treeview <?php echo $siteayar; ?> <?php echo $yoneticiekle; ?> <?php echo $yoneticilistele; ?>">
              <a href="#">
                <i class="fa fa-cogs"></i> <span>Site Yönetimi</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="<?php echo $siteayar; ?>">
                	<a href="site-ayar.html"><i class="fa fa-circle-o"></i> Site Ayarları</a>
                </li>
                <li class="<?php echo $yoneticiekle; ?>">
                	<a href="yonetici-ekle.html"><i class="fa fa-circle-o"></i> Yeni Yönetici Ekleme</a>
                </li>
                <li class="<?php echo $yoneticilistele; ?>">
                	<a href="yonetici-listele.html"><i class="fa fa-circle-o"></i> Yönetici Listesi</a></li>
              </ul>
            </li>
            <!---------------------------------------------------------------------------->
            <li>
              <a href="?cikis=1">
                <i class="fa fa-sign-out"></i> <span>Oturumu Kapat</span>
              </a>
            </li>
            <!---------------------------------------------------------------------------->
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
      <!-- Content Wrapper. Contains page content -->
      <?php 
	if(isset($_GET['sayfa'])){
		$s = $_GET['sayfa'];
		switch($s){
			
		case 'anasayfa';
		require_once("sayfalar/home.php");
		break;
		
		case 'sayfa-ekle';
		require_once("sayfalar/sayfa_ekle.php");
		break;
		
		case 'sayfa-listele';
		require_once("sayfalar/sayfa_listele.php");
		break;
			case 'marka-ekle';
		require_once("sayfalar/marka_ekle.php");
		break;
		
		case 'marka-listele';
		require_once("sayfalar/marka_listele.php");
		break;
		
		
		case 'urun-kategori-ekle';
		require_once("sayfalar/urun_kategori_ekle.php");
		break;
		
		case 'urun-kategori-listele';
		require_once("sayfalar/urun_kategori_listele.php");
		break;
		
		
		
		
		
		case 'proje-kategori-ekle';
		require_once("sayfalar/proje_kategori_ekle.php");
		break;
		
		case 'proje-kategori-listele';
		require_once("sayfalar/proje_kategori_listele.php");
		break;
		
		
		
		
		case 'proje-ekle';
		require_once("sayfalar/proje_ekle.php");
		break;
		
		case 'proje-listele';
		require_once("sayfalar/proje_listele.php");
		break;
		
				case 'duyuru-ekle';
		require_once("sayfalar/duyuru_ekle.php");
		break;
		
		case 'duyuru-listele';
		require_once("sayfalar/duyuru_listele.php");
		break;
		
		
		
			
				case 'etkinlik-ekle';
		require_once("sayfalar/etkinlik_ekle.php");
		break;
		
		case 'etkinlik-listele';
		require_once("sayfalar/etkinlik_listele.php");
		break;
		
		
		
		
		
		case 'galeri-kategori-ekle';
		require_once("sayfalar/galeri_kategori_ekle.php");
		break;
		
		case 'galeri-kategori-listele';
		require_once("sayfalar/galeri_kategori_listele.php");
		break;
		
		case 'ebulten';
		require_once("sayfalar/ebulten.php");
		break;
		
		case 'urun-ekle';
		require_once("sayfalar/urun_ekle.php");
		break;
		
		case 'urun-listele';
		require_once("sayfalar/urun_listele.php");
		break;
		
		case 'galeri-ekle';
		require_once("sayfalar/galeri_ekle.php");
		break;
		
		case 'galeri-listele';
		require_once("sayfalar/galeri_listele.php");
		break;
		
		
		case 'slider-ekle';
		require_once("sayfalar/slider_ekle.php");
		break;
		
		case 'slider-listele';
		require_once("sayfalar/slider_listele.php");
		break;
		
		case 'katalog-sayfa-ekle';
		require_once("sayfalar/katalog_sayfa_ekle.php");
		break;
		
		case 'katalog-sayfa-listele';
		require_once("sayfalar/katalog_sayfa_listele.php");
		break;
		
		case 'on-kapak-duzenle';
		require_once("sayfalar/on_kapak_duzenle.php");
		break;
		
		case 'arka-kapak-duzenle';
		require_once("sayfalar/arka_kapak_duzenle.php");
		break;
		
		case 'site-ayar';
		require_once("sayfalar/site_ayar.php");
		break;
		
		case 'mesajlar';
		require_once("sayfalar/mesajlar.php");
		break;
		
		case 'mesaj-oku';
		require_once("sayfalar/mesaj_oku.php");
		break;
		
		case 'rezler';
		require_once("sayfalar/rezler.php");
		break;
		
		case 'rez-oku';
		require_once("sayfalar/rez_oku.php");
		break;
		
		case 'siparisler';
		require_once("sayfalar/siparisler.php");
		break;
		
		case 'siparis-oku';
		require_once("sayfalar/siparis_oku.php");
		break;
		
		
		case 'yonetici-ekle';
		require_once("sayfalar/yonetici_ekle.php");
		break;
		
		case 'yonetici-listele';
		require_once("sayfalar/yonetici_listele.php");
		break;
		
		case 'haber-ekle';
		require_once("sayfalar/haber_ekle.php");
		break;
		
		case 'haber-listele';
		require_once("sayfalar/haber_listele.php");
		break;
		
		
		
		case 'hizmet-ekle';
		require_once("sayfalar/hizmet_ekle.php");
		break;
		
		case 'hizmet-listele';
		require_once("sayfalar/hizmet_listele.php");
		break;
		
		
		
		
		
		case 'urun-formu';
		require_once("sayfalar/urun_formu.php");
		break;
		
		case 'urun-formu-oku';
		require_once("sayfalar/urun_formu_oku.php");
		break;
		
					
		default:
		require_once("sayfalar/home.php");
		}
	}else{
	require_once("sayfalar/home.php");
}
?> 
      <!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">

        </div>
        <strong>Copyright 2017 @ ozer933 Web Paneli</strong>
      </footer>
    </div><!-- ./wrapper -->
    <!--file upload-->
	<script type="text/javascript" src="dist/js/bootstrap-fileupload.min.js"></script>
    <!--icheck -->
	<script src="dist/js/iCheck/jquery.icheck.js"></script>
	<script src="dist/js/icheck-init.js"></script>
	<script src="kategori.js" type="text/javascript"></script> 
  </body>
</html>