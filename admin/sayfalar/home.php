<?php echo !defined("GUVENLIK") ? die("Erisim Engellendi!.") : null;?>
<div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <?=ucwords($_SESSION['yonetici_ad_soyad'])?>
            <small>Hoşgeldin | Site Yönetim Paneli</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="anasayfa.html"><i class="fa fa-home"></i> Anasayfa</a></li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <!-- Small boxes (Stat box) -->
          <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
             <?php $bilgi= Sorgu("SELECT * FROM yonetici");
			 $mevcut = say($bilgi);?>
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3><?php echo $mevcut; ?></h3>
                  <p>Yöneticiler</p>
                </div>
                <div class="icon">
                  <i class="fa fa-users"></i>
                </div>
                <a href="yonetici-listele.html" class="small-box-footer">Yönetici Listesi <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <?php $bilgi= Sorgu("SELECT * FROM sayfalar");
			 $mevcut = say($bilgi);?>
              <div class="small-box bg-green">
                <div class="inner">
                  <h3><?php echo $mevcut; ?></h3>
                  <p>Kurumsal Yönetimi</p>
                </div>
                <div class="icon">
                  <i class="fa fa-edit"></i>
                </div>
                <a href="sayfa-listele.html" class="small-box-footer">Sayfa Listesi <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <?php $bilgi= Sorgu("SELECT * FROM urun_kategori");
			 $mevcut = say($bilgi);?>
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3><?php echo $mevcut; ?></h3>
                  <p>Referans Yönetimi</p>
                </div>
                <div class="icon">
                  <i class="fa fa-bookmark"></i>
                </div>
                <a href="urun-kategori-listele.html" class="small-box-footer">Referans Listesi <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
             <?php $bilgi= Sorgu("SELECT * FROM hizmetler");
			 $mevcut = say($bilgi);?>
              <div class="small-box bg-red">
                <div class="inner">
                  <h3><?php echo $mevcut; ?></h3>
                  <p>Hizmet Yönetimi</p>
                </div>
                <div class="icon">
                  <i class="fa fa-bullhorn"></i>
                </div>
                <a href="hizmet-listele.html" class="small-box-footer">Hizmet Listesi <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <?php $bilgi= Sorgu("SELECT * FROM projeler");
			 $mevcut = say($bilgi);?>
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3><?php echo $mevcut; ?></h3>
                  <p>Portfolyo Yönetimi</p>
                </div>
                <div class="icon">
                  <i class="fa fa-tasks"></i>
                </div>
                <a href="proje-listele.html" class="small-box-footer">Portfolyo Listesi <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
             <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <?php $bilgi= Sorgu("SELECT * FROM markalar");
			 $mevcut = say($bilgi);?>
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3><?php echo $mevcut; ?></h3>
                  <p>Çalışan Yönetimi</p>
                </div>
                <div class="icon">
                  <i class="fa fa-picture-o"></i>
                </div>
                <a href="marka-listele.html" class="small-box-footer">Çalışan Listesi <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
			   <div class="col-lg-3 col-xs-6">
              <!-- small box -->
             <?php $bilgi= Sorgu("SELECT * FROM haberler");
			 $mevcut = say($bilgi);?>
              <div class="small-box bg-red">
                <div class="inner">
                  <h3><?php echo $mevcut; ?></h3>
                  <p>Bilgi ve Etkinlik Yönetimi</p>
                </div>
                <div class="icon">
                  <i class="fa fa-bullhorn"></i>
                </div>
                <a href="haber-listele.html" class="small-box-footer">Bilgi ve Etkinlik Listesi <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <?php $bilgi= Sorgu("SELECT * FROM iletisim");
			 $mevcut = say($bilgi);?>
              <div class="small-box bg-green">
                <div class="inner">
                  <h3><?php echo $mevcut; ?></h3>
                  <p>Mesaj Yönetimi</p>
                </div>
                <div class="icon">
                  <i class="fa fa-envelope-o"></i>
                </div>
                <a href="mesajlar.html" class="small-box-footer">Mesajlar <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
          </div><!-- /.row -->
          <!-- Main row -->
              <!-- Main row -->
          
        </section><!-- /.content -->
      </div>
      
      
    <!-- jQuery 2.1.3 -->
    <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- jQuery UI 1.11.2 -->
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>    
    <!-- Morris.js charts -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="plugins/morris/morris.min.js" type="text/javascript"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
    <!-- jQuery Knob Chart -->
    <script src="plugins/knob/jquery.knob.js" type="text/javascript"></script>
    <!-- daterangepicker -->
    <script src="plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- datepicker -->
    <script src="plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>

    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard.js" type="text/javascript"></script>

    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js" type="text/javascript"></script>