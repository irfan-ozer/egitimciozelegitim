<?php include("header.php");?>

		

 

			<!--slider Section Start Here -->
			<section class="example top-space">
				<article class="content">

					<div id="rev_slider_34_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="news-gallery34" style="margin:0px auto;background-color:#ffffff;padding:0px;margin-top:0px;margin-bottom:0px;">
						<!-- START REVOLUTION SLIDER 5.0.7 fullwidth mode -->
						<div id="rev_slider_34_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.0.7">
							<ul>
							
							
							
							
							
			                         <?php 
 $haberSorgu = mysql_query("SELECT * FROM slider WHERE durum = 1 ORDER BY id DESC");
 while($haberSonuc = mysql_fetch_object($haberSorgu)){
 ?>   
							
							
							
							
							
							
							
								<!-- SLIDE  -->
								<li data-index="rs-129" data-transition="parallaxvertical" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="uploads/slider/<?php echo $haberSonuc->resim;?>" data-rotate="0" data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off" data-title="" data-description="">
									<!-- MAIN IMAGE -->
									<img src="uploads/slider/<?php echo $haberSonuc->resim;?>" alt="" >
									<!-- LAYERS -->

									<!-- LAYER NR. 2 -->
									<div class="tp-caption Newspaper-Title   tp-resizeme rs-parallaxlevel-0 business-label" id="slide-129-layer-1" data-x="['left','left','left','left']" data-hoffset="['50','50','50','30']" data-y="['top','top','top','top']" data-voffset="['165','135','105','130']" data-fontsize="['50','50','50','30']" data-lineheight="['55','55','55','35']" data-width="['600','600','600','420']" data-height="none" data-whitespace="normal" data-transform_idle="o:1;" data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" data-mask_out="x:0;y:0;s:inherit;e:inherit;" data-start="1000" data-splitin="none" data-splitout="none" data-responsive_offset="on" style="z-index: 6; min-width: 600px; max-width: 600px; white-space: normal;">
										<strong><?php echo $haberSonuc->adi;?></strong>
										<p>
											<?php echo $haberSonuc->ingadi;?>
										</p>

									</div>

									<!-- LAYER NR. 3 -->
									<div class="tp-caption Newspaper-Subtitle   tp-resizeme rs-parallaxlevel-0 first-label" id="slide-129-layer-2" data-x="['left','left','left','left']" data-hoffset="['50','50','50','30']" data-y="['top','top','top','top']" data-voffset="['140','110','80','100']" data-width="none" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" data-mask_out="x:0;y:0;s:inherit;e:inherit;" data-start="1000" data-splitin="none" data-splitout="none" data-responsive_offset="on" style="z-index: 7; white-space: nowrap;">
										<?php echo $ayar->firma_adi; ?>
									</div>

									<!-- LAYER NR. 4 -->
									
								</li>
								<!-- SLIDE  -->
								
								
								
								
								
								
								                <?php }?>
				            
								
								
								
								
								
							</ul>
							<div class="tp-bannertimer tp-bottom" style="height: 5px; background-color: rgba(166, 216, 236, 1.00);"></div>
						</div>
					</div><!-- END REVOLUTION SLIDER -->

				</article>
			</section>
			<!--slider Section End Here -->

			<!--Content Area Start-->
			<div id="content">
				<!-- service-wrap section start here -->
				

				<!-- projects-wrap section start here -->
				<section class="projects-wrap">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-6 pull-right">

								<div class="main-services main-project">
									<div class="heading-wrap">
										<h2> EĞİTİMCİ ÖZEL EĞİTİM </h2>
										<span>Bazı Çalışmalarımız </span>

									</div>
									<p>
										Öğrencilerimize sunduğumuz projeler ve daha fazlası için tıklayınız.
									</p>

									<a href="portfolyo.html" class="btn more-btn"> tümü</a>
								</div>

							</div>

						</div>
						
						
								 <?php
$sorgu=mysql_query("SELECT * FROM projeler ORDER BY tarih ASC LIMIT 6");
while($s=mysql_fetch_assoc($sorgu)){
$dizi[]=$s['adi'];
$dizim[]=$s['seo'];
$dizimm[]=$s['resim'];
};?>					
						
						
						
						
						
						
						<div class="row">
							<div class="col-xs-12 main-project-wrap">
								<div class="project-list list-one">
												<figure>
										<img width="548px" height="548px" src="uploads/projeler/<?php echo $dizimm[0];?>" alt="projects">
										<a href="portfolyo.html" class="more-link-wrapper"><span class="more-info-link"><span>+</span></span></a>
									</figure>

								</div>
								<div class="project-list list-two">
									<figure>
										<img width="268px" height="267px" src="uploads/projeler/<?php echo $dizimm[1];?>" alt="projects">
										<a href="portfolyo.html" class="more-link-wrapper"><span class="more-info-link"><span>+</span></span></a>
									</figure>

								</div>

								<div class="project-list list-two list-three">
									<figure>
										<img  width="268px" height="267px" src="uploads/projeler/<?php echo $dizimm[2];?>" alt="projects">
										<a href="portfolyo.html" class="more-link-wrapper"><span class="more-info-link"><span>+</span></span></a>
									</figure>

								</div>
								<div class="project-list list-two list-four">
									<figure>
										<img  width="268px" height="267px" src="uploads/projeler/<?php echo $dizimm[3];?>" alt="projects">
										<a href="portfolyo.html" class="more-link-wrapper"><span class="more-info-link"><span>+</span></span></a>
									</figure>

								</div>
								<div class="project-list list-two list-five">
									<figure>
										<img  width="268px" height="267px" src="uploads/projeler/<?php echo $dizimm[4];?>" alt="projects">
										<a href="portfolyo.html" class="more-link-wrapper"><span class="more-info-link"><span>+</span></span></a>
									</figure>

								</div>
								<div class="project-list list-two list-six">
									<figure>
										<img  width="268px" height="267px" src="uploads/projeler/<?php echo $dizimm[5];?>" alt="projects">
										<a href="portfolyo.html" class="more-link-wrapper"><span class="more-info-link"><span>+</span></span></a>
									</figure>

								</div>

							</div>

						</div>

					</div>

				</section>

				<section class="clients-wrap">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 heading-wrap">
								<h2>VELİ </h2>
								<span>Yorumları</span>

							</div>

							<div class="col-xs-12 owl-main-wrap">
								<div id="owl-slider" class="owl-carousel">
									
									
									
			                         <?php 
 $haberSorgu = mysql_query("SELECT * FROM duyurular WHERE durum = 1 ORDER BY id DESC");
 while($haberSonuc = mysql_fetch_object($haberSorgu)){
 ?>   
				 
									
									
									
									
									
									
									
									
									
								
									<div class="item1 orange-quote">
										<?php echo $haberSonuc->aciklama;?>

										<div class="profile-wrap clearfix">
											<figure>
												<img src="uploads/duyurular/<?php echo $haberSonuc->resim;?>" alt="">
											</figure>
											<div class="figcaption">
												<strong><?php echo $haberSonuc->adi;?></strong><span><?php echo $haberSonuc->ingadi;?></span>
											</div>

										</div>
									</div>
									
								
									
									
									
									
									
									          <?php }?>
									
									
									

								</div>
							</div>

						</div>
					</div>

				</section>

				<section class="news-wrap">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 heading-wrap">
								<h2> BİZDEN </h2>
								<span>Haberler</span>

							</div>

						</div>

						<div class="row">
						
						
						
			                         <?php 
 $haberSorgu = mysql_query("SELECT * FROM haberler WHERE durum = 1 limit 2");
 while($haberSonuc = mysql_fetch_object($haberSorgu)){
 ?>   
						
						
						
						
							<div class="col-xs-12 col-sm-6 blog-news-wrap">
								<div class="blog-comment-info">
									<ul>
										<li>
											<strong><?php echo substr($haberSonuc->tarih,0,2);?></strong>
											<?php echo substr($haberSonuc->tarih,2,12);?>
										</li>
										<li>
											<span aria-hidden="true" class="icon-eye"></span>
											<?php echo substr($haberSonuc->tarih,15,100);?>
										</li>
										<li>
											<span aria-hidden="true" class="icon-bubbles"></span>
										Bizden Haberler
										</li>
										
									</ul>

								</div>
								<div class="blog-news">
									<figure>
										<img src="uploads/haberler/<?php echo $haberSonuc->resim;?>" alt="news-blog">
									</figure>
									<div class="blog-caption">
										<h4>
										<a href="haber-detay-<?php echo $haberSonuc->seo;?>.html"> 
									<?php echo $haberSonuc->adi;?>
										</a>
										</h4>
										<p>
											<?php echo substr($haberSonuc->aciklama,0,250);?>
										</p>
										<a href="haber-detay-<?php echo $haberSonuc->seo;?>.html" class="btn more-btn"> Detay</a>
									</div>

								</div>

							</div>
						
						
						
						      <?php }?>
						
						
						
						
						
						
						
						
						
						

						</div>
					</div>
				</section>

				<section class="team-wrap">
					<div class="container">

						<div class="heading-wrap text-center">
							<h2> Çalışma </h2>
							<span>Ekibimiz</span>

						</div>
						<div class="row">
						
						
							                         <?php 
 $haberSorgu = mysql_query("SELECT * FROM markalar WHERE durum = 1 limit 4");
 while($haberSonuc = mysql_fetch_object($haberSorgu)){
 ?>   
						
						
							<div class="col-xs-12 col-sm-3 member-wrap">
								<figure>
									<img width="236px" height="410px" src="uploads/markalar/<?php echo $haberSonuc->resim;?>" alt="team-member">
								</figure>
								<div class="member-contact-info text-center">
									<span class="name-label"> <strong><?php echo $haberSonuc->adi;?></strong> <span><?php echo $haberSonuc->mevki;?></span> </span>
									<div class="media-wrap">
										<ul class="member-media clearfix">
											<li>
												<a href="<?php echo $haberSonuc->facebook;?>"><i class="fa fa-facebook"></i></a>
											</li>
											<li>
												<a href="<?php echo $haberSonuc->pinterest;?>"><i class="fa fa-instagram"></i></a>
											</li>
											<li>
												<a href="<?php echo $haberSonuc->twitter;?>"><i class="fa fa-twitter"></i></a>
											</li>
										</ul>
									</div>

								</div>

							</div>
      <?php }?>
					

						</div>

					</div>

				</section>

	

			</div>
			<!--Content Area End-->

<br>
<?php include("footer.php");?>
	