<?php echo !defined("GUVENLIK") ? die("Erisim Engellendi!.") : null;?>
<?php
if(g('islem')=="sil")
{
	$id = g('id');
	$resim_bul=Sonuc(Sorgu("SELECT * FROM galeri_kategori WHERE id='$id'"));
	$resim_sil=unlink("../uploads/galerikategori/large/".$resim_bul->resim);
	$resim_sil2=unlink("../uploads/galerikategori/thumb/".$resim_bul->resim);
	
	$kategori_sil_sorgu = Sorgu("DELETE FROM galeri_kategori WHERE id='$id'");
	
	$bilgi = '	 <div class="alert alert-success">
										Başarı ile Silinmiştir !
				  </div>' ;
	
}

?>
<div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <small><i class="fa fa-tasks"></i> Galeri Kategori Listesi</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
            <li class="active">Galeri Kategori Listesi</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header" style="padding:0;">
                <a href="galeri-kategori-ekle.html" class="btn bg-navy margin"><i class="fa fa-plus"></i> Galeri Kategori Ekle</a>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>Sıra</th>
                        <th>Sayfa Adı</th>
                        <th>Sayfa Resmi</th>
                        <th style="width:100px;">Durumu</th>
                        <th style="width:100px;">İşlem</th>
                      </tr>
                    </thead>
                    <tbody>
        <?php $KategoriSorgu = Sorgu("SELECT * FROM galeri_kategori ORDER BY id DESC");
        while($KategoriSonuc = Sonuc($KategoriSorgu)){?>
                      <tr>
                        <td><?php echo $KategoriSonuc->id; ?></td>
                        <td><?php echo $KategoriSonuc->kategori_adi; ?></td>
                        <td>
						<?php if($KategoriSonuc->resim == ""){?>
			 			<span class="btn btn-danger btn-xs"><i class="fa fa-picture-o"></i> Resim Yok</span>
			 			<?php }else{?>
			 			<a class="btn btn-success btn-xs" href="../uploads/galerikategori/large/<?php echo $KategoriSonuc->resim; ?>" target="_blank"><i class="fa fa-eye"></i> Resmi Gör</a>
						 <?php } ?>
                         </td>
                        <td>
						<?php
			 				if($KategoriSonuc->durum=='1'){?>
                             <span class="label label-success">Aktif</span>
                             <?php } else { ?>
                             <span class="label label-danger">Pasif</span>
                             <?php } ?>
             			</td>
                        <td>
                        <a href="?islem=sil&id=<?php echo $KategoriSonuc->id;?>" title="Sil" class="btn btn-danger  btn-xs" onclick="return confirm('Silmek istediğinize emin misiniz ?')" id="remove-all">
			 Sil
			 </a>
			 
			 <a href="?sayfa=galeri-kategori-ekle&islem=duzenle&id=<?php echo $KategoriSonuc->id;?>" class="btn btn-info btn-xs" title="Düzenle" id="add-sticky">
			 Düzenle
			 </a>
                        </td>
                      </tr>
         <?php } ?>             

                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
      </div>
    <!-- jQuery 2.1.3 -->
    <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- DATA TABES SCRIPT -->
    <script src="plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
    <!-- SlimScroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js" type="text/javascript"></script>
    <!-- page script -->
    <script type="text/javascript">
      $(function () {
        $("#example1").dataTable();
        $('#example2').dataTable({
          "bPaginate": true,
          "bLengthChange": false,
          "bFilter": false,
          "bSort": true,
          "bInfo": true,
          "bAutoWidth": false
        });
      });
    </script>