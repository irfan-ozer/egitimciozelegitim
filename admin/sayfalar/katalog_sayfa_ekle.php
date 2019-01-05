<?php echo !defined("GUVENLIK") ? die("Erisim Engellendi!.") : null;?>
<?php
if(p('durum') && g('islem')=="")
{
	$durum 		= p('durum');
	
	include_once('class.upload.php');
	$upload = new upload($_FILES['resim']);
	if ($upload->uploaded){
	$upload->file_auto_rename = true;
	$upload->process("../katalog/pages/large");
	
	$upload->file_auto_rename = true;
	$upload->image_resize = true;
	$upload->image_ratio_crop = true;
	$upload->image_x = 848;
	$upload->image_y = 600;
	$upload->process("../katalog/pages/medium");
	if ($upload->processed){
	$MarkaResim=''.$upload->file_dst_name.'';
	}
	}
	$gitti=$MarkaResim=''.$upload->file_dst_name.'';

	$Marka_sorgu	=	Sorgu("INSERT INTO katalog SET
										resim	=	'$MarkaResim',
										durum	=	'$durum'");	
										
																								   
		$bilgi = '  <div class="alert alert-success alert-dismissable">
                    	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    		Başarı ile Eklenmiştir
                  </div>
		 ' ;
		
}


if(p('durum') && g('islem')=="duzenle")
{
	$d_id 		= g('id');
	$durum 		= p('durum');
	
	include_once('class.upload.php');
	$upload = new upload($_FILES['resim']);
	if ($upload->uploaded){
	$upload->file_auto_rename = true;
	$upload->process("../katalog/pages/large");
	
	$upload->file_auto_rename = true;
	$upload->image_resize = true;
	$upload->image_ratio_crop = true;
	$upload->image_x = 848;
	$upload->image_y = 600;
	$upload->process("../katalog/pages/medium");
	
	if ($upload->processed){
	$MarkaResim=''.$upload->file_dst_name.'';
	}
	}
	if($MarkaResim!="")
	{
		$resim_bul=Sonuc(Sorgu("SELECT * FROM katalog WHERE id='$d_id'"));
		$resim_sil=unlink("../katalog/pages/large/".$resim_bul->resim);
		$resim_sil=unlink("../katalog/pages/medium/".$resim_bul->resim);
		
		$Marka_duzenle_sorgu = Sorgu("UPDATE katalog SET 
									resim	=	'$MarkaResim',
									durum	=	'$durum'
									WHERE id=	'$d_id'");
		$gitti=$MarkaResim=''.$upload->file_dst_name.'';
	}
}
if($_GET['islem']=="duzenle")
{
	$sayfaid = $_GET['id'];	
	$durum = "duzenle" ;
	
	$MarkaSonuc = Sonuc(Sorgu("SELECT * FROM katalog WHERE id='$sayfaid'"));
	
}

?>
<div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <small><i class="fa fa-bookmark"></i> Katalog Sayfa Ekle</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="anasayfa.html"><i class="fa fa-home"></i> Anasayfa</a></li>
            <li class="active">Katalog Sayfa Ekle</li>
          </ol>
        </section>
        <!-- Main content -->
        <section class="content">
          <div class="row">
            <!-- left column -->
            <div class="col-md-12">
            <?php echo $bilgi;?>
              <!-- general form elements -->
              <div class="box box-primary">
               <div class="row">  
              <div class="col-md-12">
                <!-- form start -->
                <form method="post" action="" enctype="multipart/form-data">
                  <div class="box-body">

			<div class="form-group ">
                                    <label>Katalog Sayfa Resmi</label>
                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                   <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                    <?php if($_GET['islem']=='duzenle'){?>
                                    <img src="../katalog/pages/medium/<?php echo $MarkaSonuc->resim;?>" style="width: 200px; height: 200px;" alt="" />
                                    <?php } else { ?>
                                    <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />
                                    <?php }?>
                                   </div>
                                 	<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                            <div>
                                           <span class="btn btn-default btn-file">
                                           <span class="fileupload-new"><i class="fa fa-paper-clip"></i> Resim Seç</span>
                                           <span class="fileupload-exists"><i class="fa fa-undo"></i> Değiştir</span>
                                           <input name="resim" type="file" class="default" />
                                           </span>
                                                <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash"></i> Sil</a>
                                            </div>
                                        </div>
                                </div>
                    
                    <?php if($_GET['islem']=="duzenle"){?>
                    <div class="form-group">
                        <label>Durumu</label>
                              <div class="square-green">
                                <div class="radio">
                                    <input tabindex="3" type="radio" value="1" <?php if($MarkaSonuc->durum == '1') {?> checked <?php } ?> name="durum">
                                    <div style="margin-left:30px;position:absolute;margin-top:-20px;">Açık</div>
                                </div>
                            </div>
                             <div class="square-red">
                                <div class="radio">
                                    <input tabindex="3" type="radio" value="0" <?php if($MarkaSonuc->durum == '0') {?> checked <?php } ?> name="durum"  >
                                    <div style="margin-left:30px;position:absolute;margin-top:-20px;">Kapalı</div>
                                </div>
                            </div>
                    </div>
                  <?php }else{?>
                  	<div class="form-group">
                        <label>Durumu</label>
                              <div class="square-green">
                                <div class="radio">
                                    <input tabindex="3" type="radio" value="1"  checked  name="durum">
                                    <div style="margin-left:30px;position:absolute;margin-top:-20px;">Açık</div>
                                </div>
                            </div>
                             <div class="square-red">
                                <div class="radio">
                                    <input tabindex="3" type="radio" value="0"  name="durum"  >
                                    <div style="margin-left:30px;position:absolute;margin-top:-20px;">Kapalı</div>
                                </div>
                            </div>
                    </div>
                  <?php } ?>
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                  <?php if($_GET['islem']=="duzenle"){?>
						  <button type="submit" onclick="submit();" class="btn btn-primary">Güncelle</button>	
                    <?php }else{?>
						  <button type="submit" onclick="submit();" class="btn btn-primary">Kaydet</button>						
                   <?php } ?>
                  </div>
                </form>
              </div><!-- /.box -->
              </div>
</div>
            </div><!--/.col (left) -->
            <!-- right column -->
          </div>   <!-- /.row -->
        </section><!-- /.content -->
      </div>
      
      <!-- jQuery 2.1.3 -->
    <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js" type="text/javascript"></script>
    <!-- CK Editor -->
    <script src="//cdn.ckeditor.com/4.4.3/standard/ckeditor.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
    <script type="text/javascript">
      $(function () {
        $(".textarea").wysihtml5();
      });
    </script>
    
    