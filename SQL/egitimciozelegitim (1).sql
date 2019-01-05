-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 05 Oca 2019, 19:14:55
-- Sunucu sürümü: 5.1.73-community
-- PHP Sürümü: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `egitimciozelegitim`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `diger_resim`
--

CREATE TABLE IF NOT EXISTS `diger_resim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resim_id` int(11) NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=35 ;

--
-- Tablo döküm verisi `diger_resim`
--

INSERT INTO `diger_resim` (`id`, `resim_id`, `resim`) VALUES
(20, 15, '_0014_marina0.jpg'),
(21, 15, '_0019_padisah0.jpg'),
(22, 16, '_0001_deniz0.jpg'),
(23, 16, '_0022_panama0.jpg'),
(24, 17, 'erk3.jpg'),
(25, 17, 'iH1Jdqyg.jpg'),
(26, 17, 'XZHN7S3r.jpg'),
(27, 22, '6.jpg'),
(28, 22, '2.jpg'),
(29, 23, '1.jpg'),
(30, 23, '14.jpg'),
(33, 25, '1_breather_800x600.jpg'),
(34, 25, '3.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dosya`
--

CREATE TABLE IF NOT EXISTS `dosya` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dosya_id` int(11) NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=11 ;

--
-- Tablo döküm verisi `dosya`
--

INSERT INTO `dosya` (`id`, `dosya_id`, `adi`) VALUES
(8, 11, 'dosya1.pdf'),
(9, 11, 'dosya2.pdf'),
(10, 10, 'dosya1_1.pdf');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular`
--

CREATE TABLE IF NOT EXISTS `duyurular` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durum` int(11) NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `ingaciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `facebook` longtext COLLATE utf8_turkish_ci,
  `twitter` longtext COLLATE utf8_turkish_ci,
  `instagram` longtext COLLATE utf8_turkish_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=27 ;

--
-- Tablo döküm verisi `duyurular`
--

INSERT INTO `duyurular` (`id`, `durum`, `resim`, `adi`, `aciklama`, `tarih`, `seo`, `ingadi`, `ingaciklama`, `facebook`, `twitter`, `instagram`) VALUES
(19, 1, 'clients_pic_2.png', 'Seren Demirel', '<p>Oğlumda davranış bozuklukları nedeni ile eğitimci &ouml;zel eğitime geldik. &Ccedil;ok memnun kaldık.</p>\r\n', '19 Ekim 2018, 09:43', 'Seren-Demirel', 'Muhasebeci', '', NULL, NULL, NULL),
(25, 1, 'clients_pic_3.png', 'Salih Özer', '<p>Kızım&#39;da &ouml;ğrenme g&uuml;&ccedil;l&uuml;ğ&uuml; sıkıntısını farkettikten sonra hemen eğitimci &ouml;zel eğitim merkezine geldik. &Ccedil;ok memnun kaldık.</p>\r\n', '19 Ekim 2018, 09:47', 'Salih-Ozer', 'Doktor', '', NULL, NULL, NULL),
(26, 1, 'commenter_1.png', 'Canan Türkyılmaz', '<p>Oğlum i&ccedil;in dil ve konuşma terapisi eğitimi alıyoruz. Memnun kaldık &ccedil;ok teşekk&uuml;rler</p>\r\n', '19 Ekim 2018, 09:52', 'Canan-Turkyilmaz', 'Ev Hanımı', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ebulten`
--

CREATE TABLE IF NOT EXISTS `ebulten` (
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=34 ;

--
-- Tablo döküm verisi `ebulten`
--

INSERT INTO `ebulten` (`email`, `tarih`, `ip`, `id`) VALUES
('demo@example.com', '25 Temmuz 2016, 14:25', '::1', 33);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlikler`
--

CREATE TABLE IF NOT EXISTS `etkinlikler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durum` int(11) NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `ingaciklama` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=22 ;

--
-- Tablo döküm verisi `etkinlikler`
--

INSERT INTO `etkinlikler` (`id`, `durum`, `resim`, `adi`, `aciklama`, `tarih`, `seo`, `ingadi`, `ingaciklama`) VALUES
(19, 1, 'hd_5.jpg', '1', '', '22 Temmuz 2016, 18:18', '1', '', ''),
(20, 1, 'hd_6.jpg', '2', '', '22 Temmuz 2016, 18:19', '2', '', ''),
(21, 1, 'hd_7.jpg', '3', '', '22 Temmuz 2016, 18:19', '3', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeriler`
--

CREATE TABLE IF NOT EXISTS `galeriler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` int(11) NOT NULL,
  `adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ingaciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `kod` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `begen` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=44 ;

--
-- Tablo döküm verisi `galeriler`
--

INSERT INTO `galeriler` (`id`, `kategori`, `adi`, `seo`, `resim`, `durum`, `aciklama`, `tarih`, `ingaciklama`, `ingadi`, `kod`, `begen`) VALUES
(40, 47, '4', '4', 'thumb_3_1.jpg', 1, '', '25-07-2016', '', '', '', 0),
(42, 47, '6', '6', 'thumb_2_1.jpg', 1, '', '25-07-2016', '', '', '', 0),
(38, 46, '2', '2', 'thumb_2.jpg', 1, '', '25-07-2016', '', '', '', 0),
(39, 45, '3', '3', 'thumb_1.jpg', 1, '', '25-07-2016', '', '', '', 0),
(37, 47, '1', '1', 'thumb_3.jpg', 1, '', '25-07-2016', '', '', '', 0),
(43, 0, '5', '5', 'thumb_2_2.jpg', 1, '', '25-07-2016', '', '', '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri_kategori`
--

CREATE TABLE IF NOT EXISTS `galeri_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  `kategori_ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `kod` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=48 ;

--
-- Tablo döküm verisi `galeri_kategori`
--

INSERT INTO `galeri_kategori` (`id`, `kategori_adi`, `resim`, `seo`, `durum`, `kategori_ingadi`, `kod`) VALUES
(46, 'Bar', '', 'Bar', 1, '', ''),
(47, 'Cafe', '', 'Cafe', 1, '', ''),
(45, 'Loby', '', 'Loby', 1, '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE IF NOT EXISTS `haberler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durum` int(11) NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `ingaciklama` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=31 ;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`id`, `durum`, `resim`, `adi`, `aciklama`, `tarih`, `seo`, `ingadi`, `ingaciklama`) VALUES
(25, 1, 'bg3.jpg', 'Çocuklara İnanmak', '<p>&Ouml;d&uuml;ller ve cezalar bir &ouml;ğrencinin davranışlarını değiştiriyor olabilir, ama bunlar bittiğinde davranışları nasıl devam ediyor? Problemli &ccedil;ocuklarla &ccedil;alışan biri olarak, &ouml;d&uuml;l ve cezadan değil, kendi davranışlarının sorumluluğunu almayı &ouml;ğrenmek i&ccedil;in &ccedil;ocukları teşvik etme taraftarıyım. O anda okul bah&ccedil;esinde, Mad Max filminden &ccedil;ıkmış gibi marjinal giyinmiş bir kız &ouml;ğrenciyi g&ouml;stererek y&ouml;ntemimin onda da işe yarayıp yaramayacağını</p>\r\n', '19 Ekim 2018, 13:45', 'Cocuklara-Inanmak', '', ''),
(26, 1, 'slider_5.jpg', 'Otizmli Çocukların İletişim Becerileri Yaratıcı Drama Yoluyla Gelişir mi?', '<p>Otizm spektrum vakalarında yaratıcı dramanın olumlu sonu&ccedil;ları bir &ccedil;alışma ile kanıtlandı</p>\r\n\r\n<p>D&uuml;nyada olduk&ccedil;a sık rastlanan otizm, aslında geniş bir tanımlamadır. &Ccedil;ocuklarda Dezintegratif Bozukluk, Asperger Sendromu, RETT Sendromu gibi hastalıklar &ldquo;otizm spektrum bozuklukları&rdquo; i&ccedil;erisinde yer alırlar ve &ccedil;ok sayıda bireysel duruma tekab&uuml;l ederler.</p>\r\n\r\n<p>Amerika Birleşik Devletleri&rsquo;nde her 88 &ccedil;ocuktan biri otizmin formlarından biriyle tanılanmıştır. Her 54 erkek &ccedil;ocuktan biri ve her 252 kız &ccedil;ocuğundan biri otizm bozukluğu tanısı almıştır. Erkek &ccedil;ocukları, kız &ccedil;ocuklarına oranla 5 kat daha fazla tanı almaktadır. Her 20 dakikada bir bir &ccedil;ocuğa otizm tanısı konmaktadır. Bu oranlara bakılarak otizmin bir salgın hastalık gibi yaygınlaştığı s&ouml;ylenebilir. D&uuml;nyada bir salgın hastalık gibi g&ouml;r&uuml;lme sıklığı artan otizm, en hızlı gelişen gelişim bozukluklarından biridir.</p>\r\n\r\n<p>Otizm tanısı alan &ccedil;ocuk veya yetişkin bireylerin yıllık y&uuml;zde 10-17&rsquo;si diğer insanlarla anlamlı bir ilişki kurabilme konusunda &ccedil;ok zorlanmakta veya bunu hi&ccedil; başaramamaktadır. Tanı koyulan bireyler, &ccedil;ok azının &ccedil;evrelerindeki insanlarla anlamlı bir iletişim kurabilirken bu kişiler sıklıkla tekrarlı fiziksel hareketler ya da kendilerini kısıtlayan/tekrarlayan davranışlar g&ouml;sterirler.</p>\r\n\r\n<p>Her ne kadar ciddi bir hastalık olsa da, otizm, &ccedil;eşitli yol ve y&ouml;ntemlerle yaşanabilir hale gelebilir. Bunlardan birisi, iletişim yetilerinin geliştirilmesi i&ccedil;in kullanılan yaratıcı dramadır.</p>\r\n\r\n<p>Peki yaratıcı drama, otizm spektrumda yer alan &ccedil;ocukların iletişim becerilerinin gelişmesine yardımcı olabilir mi?</p>\r\n', '19 Ekim 2018, 13:47', 'Otizmli-Cocuklarin-Iletisim-Becerileri-Yaratici-Drama-Yoluyla-Gelisir-mi-', '', ''),
(27, 1, 'slider_104.jpg', 'Oyun Neden Önemli?', '<p>&Ccedil;ocukların, yaşamlarının ilk yıllarında baştan aşağı bir duyu organı gibi var olduklarını belirten, Waldorf yaklaşımının kurucusu olan Rudolf Steiner, &ccedil;ocuklarda doğdukları ortama uyum sağlama s&uuml;recinin tıpkı memelilerde olduğu gibi, ilk başta taklit yoluyla geliştiğini belirtir. &Ccedil;ocuğun annesinin duyguları, etrafındaki titreşimler, renk ve ses gibi duyusal etmenler ve annesinin &ccedil;ocuğun etrafını kuşatarak yarattığı yaklaşım, &ccedil;ocukta kalıcı etki sahibidir. &Ccedil;ocuklar, annelerinin g&uuml;l&uuml;mseme gibi olumlu yaklaşımlarına olumlu cevaplar verirler ve genellikle benzer tepkiler g&ouml;sterirler.</p>\r\n', '19 Ekim 2018, 13:47', 'Oyun-Neden-Onemli-', '', ''),
(28, 1, 'slider_1.jpg', 'Öğretmenlerin Öğrencilerine Sorabileceği 5 Güçlü Soru', '<p>&Ouml;ğretmenliğe yeni başladığım yıllarda &ouml;ğrendiğim bir şey, &ouml;ğrencilere soru sormanın &ouml;nemiydi. &Ouml;ğrencilere soru sormak ve bu soruların onlara nasıl y&ouml;neltildiği eğitimde &ouml;nemli bir yer tutar. Bir soru sorarken, &ccedil;ocukların aynı zamanda d&uuml;ş&uuml;n&uuml;p cevap verebilme fırsatlarının da olması gerekir.</p>\r\n\r\n<p>Bu y&uuml;zden, &ouml;ğrencilerin i&ccedil;lerindeki bilgiyi &ccedil;ıkarabilmek ve kendilerine sorular y&ouml;neltmelerini sağlayabilmek i&ccedil;in iyi d&uuml;ş&uuml;n&uuml;lm&uuml;ş sorulardan ziyade stratejik olanlarını tercih etmek gerekir. Bir &ouml;ğretmenin stratejik soru sorma yeteneğinin gelişkin olması gerekmekte</p>\r\n\r\n<p>Aynı zamanda, ge&ccedil;en yıllar i&ccedil;inde &ouml;ğrendiğim bir şey de basit tasarlanmış, direkt ve sade soruların olduk&ccedil;a etkili olduğu. Eğer siz de yeni bir &ouml;ğretmenseniz ve soru sormakta kendinizi geliştirmek istiyorsanız, işte size 5 &ouml;neri:</p>\r\n\r\n<p>1. Ne d&uuml;ş&uuml;n&uuml;yorsun?<br />\r\nBu soru bizi &ccedil;ok fazla şey s&ouml;ylemekten alıkoyar. &Ouml;ğrencilerin &ouml;ğrenme şemalarında ve anlayışlarında, yeni anlatılan bilgilerin yerleşmesi ve onları kullanabilme yetilerinin geliştirilebilmesi i&ccedil;in bu odaklayıcı ve yalın soru iyi bir se&ccedil;enek.</p>\r\n\r\n<p>2. Neden b&ouml;yle d&uuml;ş&uuml;n&uuml;yorsun?<br />\r\n&Ouml;ğrencileriniz d&uuml;ş&uuml;ncelerini sizinle paylaştıktan sonra, bu soru ile birlikte &ouml;ğrencilerinizin kendi d&uuml;ş&uuml;ncelerini temellendirmelerini sağlayabilirsiniz.</p>\r\n\r\n<p>3. Bunu nasıl biliyorsun?<br />\r\nBu soru sorulduğunda, &ouml;ğrenci d&uuml;ş&uuml;nceleriyle okuyarak, g&ouml;rerek edindiği deneyimleri arasında bağlantıları kurmaya başlar.</p>\r\n\r\n<p>4. Başka ne s&ouml;yleyebilirsin?<br />\r\nBu soru, &ouml;ğrencileri sorulan &ccedil;er&ccedil;evenin &ouml;tesinde d&uuml;ş&uuml;nmeye ve kendi fikirlerine dair başka ipu&ccedil;ları vermeye y&ouml;neltir.</p>\r\n\r\n<p>5. H&acirc;l&acirc; başka sorun var mı?<br />\r\nBu sorula birlikte &ouml;ğrencilerinizi bilgileri ve d&uuml;ş&uuml;nceleriyle ilgili başka sorular y&ouml;neltmesine teşvik edebilirsiniz.</p>\r\n\r\n<p>T&uuml;m bunlara ek olarak, &ouml;ğrencilerinize d&uuml;ş&uuml;nmeleri i&ccedil;in gereken zamanı tanıdığınızdan emin olun. Onların yaşına, derinliklerine ve konfor seviyelerine g&ouml;re s&uuml;reyi siz belirleyebilirsiniz. Yalnızca, cevap vermek i&ccedil;in ellerini kaldırana kadar sessizce beklerken sabırlı olun.</p>\r\n\r\n<p>Aynı zamanda, sorularınızı sorarken tonlamanıza dikkat edin. Soru sorarken sorgulayıcı ve nazik bir ses tonu kullanın.</p>\r\n\r\n<p>&Ouml;ğrencilerinizin daha rahat ve &ouml;zg&uuml;venli hissedebilmeleri i&ccedil;in onları sorularınızı sorduktan sonra grup konuşmalarına y&ouml;nlendirebilirsiniz. Sıra arkadaşlarıyla fikir alışverişinde bulunmaları, onların sınıf &ouml;n&uuml;nde daha rahat hissetmelerini sağlayacak.</p>\r\n', '19 Ekim 2018, 13:49', 'Ogretmenlerin-Ogrencilerine-Sorabilecegi-5-Guclu-Soru', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hizmetler`
--

CREATE TABLE IF NOT EXISTS `hizmetler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durum` int(11) NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `ingaciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `saat` longtext COLLATE utf8_turkish_ci,
  `fiyat` longtext COLLATE utf8_turkish_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=51 ;

--
-- Tablo döküm verisi `hizmetler`
--

INSERT INTO `hizmetler` (`id`, `durum`, `resim`, `adi`, `aciklama`, `tarih`, `seo`, `ingadi`, `ingaciklama`, `saat`, `fiyat`) VALUES
(45, 1, 'davranis_boz.jpg', 'Davranış Bozukluğu Terapisi', '<p>Davranış bozuklukları: &Ccedil;ocuklar her yeni gelişim d&ouml;nemine ge&ccedil;tiklerinde yeni beceriler kazanırlar. &Ccedil;ocuğun edindiği her yeni beceri beraberinde &ccedil;&ouml;z&uuml;lmesi gereken bir sorunu da getirir.</p>\r\n\r\n<p>Gelişim d&ouml;nemlerinde karşılaşılan sorunlar olağan ve ge&ccedil;icidir, ancak &ccedil;ocuk bu d&ouml;nemlerde &ccedil;evresindeki yetişkinlerin yanlış tutumlarına maruz kalırsa veya sorunlarını &ccedil;&ouml;zerken engellemelerle karşılaşırsa, d&ouml;nemsel (olağan) diye nitelenen bu sorunların &ccedil;&ouml;z&uuml;m&uuml; yeni gelişim d&ouml;nemlerine ve &ccedil;ocuğun ileriki yaşlarına ertelenir.</p>\r\n\r\n<p>Bu durumlarda ortaya &ccedil;ıkan sorunlar uyum ve davranış bozuklukları olarak adlandırılır.</p>\r\n\r\n<p>&Ouml;rneğin, &ccedil;ocuk, sosyal-duygusal gelişimi gereği yaşıtlarıyla oyun oynaması gereken bir yaşta, s&uuml;rekli yalnız kaldıysa, ileride i&ccedil;ine kapanık bir &ccedil;ocuk ve yetişkin olabilir.</p>\r\n\r\n<p>&Ccedil;ocuk gelişimsel olarak kendi kendine &uuml;st&uuml;n&uuml; giyinme ve yemek yeme davranışlarını yapabilecek becerilere sahipken, aile tarafından s&uuml;rekli bu becerilerini sergilemesi engellendiyse, bu alandaki gelişimini farketmesi ileriki yaşlara kalacağı i&ccedil;in yeni gelişim d&ouml;nemlerinde ortaya &ccedil;ıkacak sorunlarla baş etmesi g&uuml;&ccedil;leşecektir.</p>\r\n\r\n<p>Baskıcı, aşırı disiplinli, aşırı koruyucu ve alaycı, aşağılayıcı aile tutumları da uyum ve davranış bozukluklarına yol a&ccedil;ar. Uyum bozuklukları yalnızca ailenin yanlış tutumlarına bağlı olarak gelişmez, &ccedil;evresel fakt&ouml;rlere bağlı olarak da gelişebilir.</p>\r\n\r\n<p>Yangın, deprem, t&uuml;p patlaması gibi travmatik olaylar; evdeki kavga ve huzursuzluklar, aile i&ccedil;i şiddet gibi aile i&ccedil;i sorunlar; &ouml;l&uuml;m veya boşanma nedeniyle anne-babadan uzak kalma gibi kayıp ve ayrılıklar da uyum ve davranış bozukluklarına yol a&ccedil;an &ccedil;evresel fakt&ouml;rlere &ouml;rnek olarak verilebilir.</p>\r\n\r\n<p>&Ccedil;ocuklarda davranış bozuklukları<br />\r\nAltını ıslatma ve dışkı ka&ccedil;ırma, Psikolojik k&ouml;kenli kekemelik, Parmak emme, Tırnak yeme, Fobiler ve korkular, Yeme bozuklukları ve iştahsızlık, Uyku bozuklukları, Mast&uuml;rbasyon (kendi kendini tatmin etme), İ&ccedil;e kapanıklık, &Ccedil;alma, Yalan s&ouml;yleme, Aşırı hareketlilik, Saldırganlık, Sa&ccedil; yolma, Uyur gezerlik, Bağımlılık, Aşırı inat&ccedil;ılık</p>\r\n\r\n<p>Uyum Bozukluğu ile Normal Davranışı Birbirinden Ayırdetmek<br />\r\nAileler genellikle, &ccedil;ocuğun gelişim d&ouml;nemine bağlı olarak yaşadığı olağan sorunlarla, uyum bozukluğu olarak kabul edilen davranışlar arasında ayırım yapmanın zor olduğunu ifade eder.</p>\r\n\r\n<p>Anne-babalar i&ccedil;in bu ayrımı sağlıklı bi&ccedil;imde yapmak &ccedil;ok zordur, ancak belirli kriterleri g&ouml;z &ouml;n&uuml;nde bulundurarak en azından bir uzmana başvurmaları gerekip gerekmediğini tespit edebilirler.</p>\r\n\r\n<p>&Ouml;rneğin, alt ıslatma davranışını ele alalım. Birbu&ccedil;uk yaşında tuvalet eğitimi almış bir &ccedil;ocuğun, ilk 1-1,5 sene, zaman zaman altına ka&ccedil;ırması normaldir. &Ccedil;oğu zaman &ccedil;ocuk kaslarını kontrol etmekte g&uuml;&ccedil;l&uuml;k &ccedil;ekebileceği i&ccedil;in tuvalet eğitimini takiben gece ve g&uuml;nd&uuml;z g&ouml;r&uuml;lebilen alt ıslatma davranışı normal kabul edilmelidir.</p>\r\n\r\n<p>&Ccedil;ocuk 3,5-4 yaşından sonra da alt ıslatma davranışına devam ediyorsa bu davranış uyum bozukluğu olarak kabul edilebilir; &ccedil;&uuml;nk&uuml; artık yeni bir beceriyi ( tuvalet eğitimi ) kazanımak i&ccedil;in gerekli olan adaptasyon s&uuml;reci aşılmıştır.</p>\r\n\r\n<p>Bunun gibi, bebeklik d&ouml;nemindeki parmak emme davranışı normal kabul edilirken, 1 yaşından sonraki parmak emme davranışı uyum ve davranış bozukluğuna işaret eder.</p>\r\n\r\n<p>Anne-babaların &ccedil;ocuğun hangi yaşta karşılaştığı sorunların normal, kısa s&uuml;reli ve ge&ccedil;ici olduğunu tespit edebilmesi i&ccedil;in bu konularda bilin&ccedil;li ve bilgili olması gerekmektedir.</p>\r\n\r\n<p>&Ccedil;ocuk gelişimi ve eğitimi konusunda &ccedil;ok okuyan bilin&ccedil;li aileler bile bu tip sorunları farketmekte g&uuml;&ccedil;l&uuml;k &ccedil;ekmektedirler. Bu nedenle t&uuml;m anne-babaları insanın kişilik gelişiminde &ccedil;ok &ouml;nemli olan 0-6 yaş d&ouml;neminde 6 ayda bir bile olsa, &ccedil;ocuk gelişimlerini kontrol ettirmek, anne-babanın farkına varamadığı bir sorun olup olmadığını &ouml;ğrenmek ve ortaya &ccedil;ıkabilecek olası uyum ve davranış bozukluklarına karşı &ouml;nlem almak i&ccedil;in bir psikoloğa başvurmalarında yarar vardır.</p>\r\n\r\n<p>Hatalı Anne &ndash; Baba Tutumları<br />\r\nYukarıda s&ouml;z&uuml;n&uuml; ettiğimiz gibi hatalı anne-baba tutumlarına bağlı olarak ortaya &ccedil;ıkabilir. Bazen de, davranış bozukluğu başka bir fakt&ouml;re bağlı olarak ortaya &ccedil;ıkar, ancak hatalı anne-baba tutumları nedeniyle<br />\r\n&ndash; Tırmanarak artabilir,<br />\r\n&ndash; Yeni uyum ve davranış bozukluk ortaya &ccedil;ıkmasına neden olabilir,<br />\r\n&ndash; &Ouml;z-g&uuml;ven eksikliği, i&ccedil;e kapanıklık, aşırı kaygılı olma gibi sorunların ortaya &ccedil;ıkmasına katkıda bulunarak kişilik gelişimini olumsuz etkileyebilir.</p>\r\n\r\n<p>Anne-babalar &ccedil;ocuğun bilin&ccedil;li olarak bellirli davranışları yaptıklarını d&uuml;ş&uuml;nerek sorunu g&ouml;rmezden gelir veya davranışı ve &ccedil;ocuğu baskı altına almaya &ccedil;alışır Oysa, &ccedil;ocukların &ccedil;ok b&uuml;y&uuml;k bir &ccedil;oğunluğu, bilin&ccedil;li olarak bu davranışları sergilemez. &Ccedil;evrelerine bir mesaj vermek i&ccedil;in, yani rahatsız oldukları durumları ifade etmek i&ccedil;in bunu yaparlar.</p>\r\n\r\n<p>Anne-babalar sorunu gidermek i&ccedil;in, davranışı yapan &ccedil;ocuğu k&uuml;&ccedil;&uuml;k d&uuml;ş&uuml;r&uuml;c&uuml;, aşağılayıcı ve su&ccedil;layıcı tavırlar sergilerler. Bazı aileler sorunu gidermek i&ccedil;in &ccedil;eşitli ceza y&ouml;ntemlerine, hatta şiddete bile başvurmaktadırlar.</p>\r\n\r\n<p>Mast&uuml;rbasyon yapan &ccedil;ocuğa ceza vermek, parmağını emen &ccedil;ocuğun ağzına biber s&uuml;rmek ve altını ıslatan &ccedil;ocuğu deşifre etmek bu tip tutumlara &ouml;rnek olarak verilebilir. Ailelerin, cezadan ve su&ccedil;layıcı tavırlardan uzak durmaları gerekir. Bu tip baskıcı tutumlar sorunu artırmaktan başka bir işe yaramaz.</p>\r\n\r\n<p>Bazı aileler ise, sorunu kendi haline bırakıp, kendiliğinden ge&ccedil;mesini beklerler. Oysa, uyum ve davranış bozuklukları kendiliğinden ge&ccedil;mez, mutlaka bu bozukluğun altında yatan sebepler ortadan kaldırıldıktan sonra ge&ccedil;er.</p>\r\n\r\n<p>Zaman i&ccedil;inde kendiliğinden ge&ccedil;en inatlaşma, parmak emme, alt ıslatma vb. Sorunlar yukarıda s&ouml;z&uuml;n&uuml; ettiğimiz normal d&ouml;nemsel sorunlardır.</p>\r\n\r\n<p>Uyum bozukluğu olarak ortaya &ccedil;ıkan davranışlar ise ileriki yaşlarda ortadan kalkmış gibi g&ouml;z&uuml;kse bile ya yeni bir sorun olarak, ya da tekrarlanarak karşımıza &ccedil;ıkar.</p>\r\n\r\n<p>&Ouml;rneğin, parmak emme davranışı okul yıllarında tırnak yeme veya &ouml;z-g&uuml;ven eksikliği olarak yeniden belirebilir.</p>\r\n\r\n<p>Alt ıslatma davranışı olan 3 ve 4 yaşlarında iki &ccedil;ocuğu ele alalım; 3 yaşındaki &ccedil;ocuğun sorunu 6 ay i&ccedil;inde kendiliğinden ge&ccedil;ebilir, &ccedil;&uuml;nk&uuml; bu yaşta g&ouml;r&uuml;len bu davranış normaldir; ancak 4 yaşındaki &ccedil;ocuğun davranışı kendiliğinden ge&ccedil;mez, &ccedil;&uuml;nk&uuml; bu bir uyum bozukluğudur.</p>\r\n\r\n<p>Uyum ve Davranış Bozukluğu Tedavisi<br />\r\nAilelerin uyum ve davranış bozuklukları konusunda &ccedil;ok bilin&ccedil;li ve dikkatli olmaları, b&ouml;yle bir sorundan ş&uuml;phelendiklerinde bir uzmana başvurmaktan &ccedil;ekinmemeleri gerekir.</p>\r\n\r\n<p>Psikologlar, anne-baba ve &ccedil;ocukla yapılan ayrı ayrı g&ouml;r&uuml;şmelerle sorunun sebeplerini tespit ederler. &Ccedil;ocuğun yaş d&ouml;nemine, sorunun &ccedil;eşidine ve şiddetine g&ouml;re aileye gerekli &ouml;nerilerde bulunur ve gerek g&ouml;r&uuml;rlerse &ccedil;ocukla belirli bir s&uuml;re d&uuml;zenli olarak g&ouml;r&uuml;şerek sorunun ortadan kalkmasını sağlarlar.</p>\r\n\r\n<p>Ailelerin de amacı uzmanların amacıyla paralel olmalıdır; ama&ccedil;, davranış bozukluğunu ortadan kaldırmaya &ccedil;alışmak değil, bu bozukluğu ortaya &ccedil;ıkaran sebepleri ortadan kaldırmaya &ccedil;alışmak olmalıdır.</p>\r\n\r\n<p>&Ouml;zel Eğitim ve Rehabilitasyon Merkezimizde alanında uzman pedagog ve &ouml;zel eğitim &ouml;ğretmenleriyle davranış bozukluğu g&ouml;steren &ccedil;ocuk ve gen&ccedil;lerimize y&ouml;nelik eğitim ve &ouml;ğretim &ccedil;alışmaları yapılmaktadır.</p>\r\n', '19 Ekim 2018, 09:41', 'Davranis-Bozuklugu-Terapisi', '', '', NULL, NULL),
(46, 1, 'yaygin_gelisimsel_bozukluklar.jpg', ' Yaygın Gelişimsel Bozukluklar', '<p><strong>YAYGIN GELİŞİMSEL BOZUKLUKLAR YGB NEDİR?</strong></p>\r\n\r\n<p>Yaygın gelişimsel bozukluklar (YGB), sosyalleşme ve iletişim gibi &ccedil;oklu temel fonksiyonların gelişmesinde &ccedil;eşitli sorunları kapsayan beş temel bozukluğu i&ccedil;eren psikiyatrik bir tanı grubudur.</p>\r\n\r\n<p>Bu grupta yer alan bozuklukların en &ccedil;ok bilineni Otizmdir, diğerleri, Rett Sendromu, Dezintegratif Bozukluk, Asperger sendromu ve Atipik Otizmdir.</p>\r\n\r\n<p><strong>YGB BELİRTİLERİ</strong></p>\r\n\r\n<p>Yaygın gelişimsel bozukluğu olabilecek bireyler aşağıdaki belirtilerle farkedilebilirler. Bu sayılanlar ş&uuml;phelenme i&ccedil;in ipu&ccedil;larıdır. Bu davranışların biri ya da bir ka&ccedil; tanesi var ise &uuml;niversitelerin veya hastanelerin n&ouml;roloji, psikiyatri, psikoloji b&ouml;l&uuml;mlerine başvurmakta fayda vardır.</p>\r\n\r\n<p><strong>Dili ve konuşmayı kullanıp anlamada zorluklar yaşarlar.<br />\r\nKişiler, nesneler ve olaylar ile ilişki kurmakta zorluklar yaşarlar.<br />\r\nOyuncaklar ve nesnelerle farklı tarzda oyun oynarlar.</strong></p>\r\n\r\n<p><strong>Rutin davranışlarını değiştirmede zorluklar yaşarlar.<br />\r\nTekrar eden v&uuml;cut hareketleri ve davranışlar g&ouml;sterirler (sırtını vurma, sallanma) gibi.</strong></p>\r\n\r\n<h2>YAYGIN GELİŞİMSEL BOZUKLUKLAR&nbsp;TANI KOYMA</h2>\r\n\r\n<p>&Ccedil;ocuğunuzda yukarıda sayılan belirtilerin, biri veya daha fazlası varsa, belki endişelenmenize &ccedil;ok gerek yok, ama yinede &uuml;niversitelerin, hastanelerin, n&ouml;roloji, psikiyatri, psikoloji b&ouml;l&uuml;mlerine başvurmanızda fayda vardır.</p>\r\n\r\n<p>&Ccedil;&uuml;nk&uuml; toplumda bu belirtileri g&ouml;steren ama tanısı konulmamış bir &ccedil;ok insan vardır ve normal tabir edilen stat&uuml;de yaşarlar.</p>\r\n\r\n<p>Aileleri, onları, farklı, yaramaz, anlaşılmaz vb. g&ouml;r&uuml;r ama psikiyatrik bir sorunu olduğunu kabullenmek istemezler.</p>\r\n\r\n<p>Bu durum bireyin ileriki yaşantısında ciddi sorunlara yol a&ccedil;abilir.</p>\r\n\r\n<p>Herkes yaşamının belli d&ouml;nemlerinde veya tamamında psikiyatrik, n&ouml;rolojik, psikolojik sorunlar yaşayabilir. Bu sorunlar d&ouml;nemsel olabildiği gibi, genetik k&ouml;kenlerde i&ccedil;erebilir.</p>\r\n\r\n<p>Soruna tanı konulmaz ise &ccedil;ok daha fazla acılar yaşanabilir. İlgili birimler bu soruna bir tanı koyduklarında kabul edip bir an &ouml;nce tedavi, rehabilitasyon ve bireysel eğitime başlamak gerekir.</p>\r\n\r\n<p>Unutmayın erken tanı, her sorunda olduğu gibi bu sorunda da &ldquo;hayat kurtarır&rdquo;. Sorunlar erken tanı ile &ccedil;&ouml;z&uuml;lebilir ya da eğitim vb. &ccedil;alışmalar ile kabul edilebilir sınırlara &ccedil;ekilerek bireyin yaşamı kolaylaştırılabilir.</p>\r\n\r\n<p>Bu belirtiler ile tanı koymak kolay değildir. Tanı, n&ouml;roloji, psikiyatri ve psikoloji b&ouml;l&uuml;mlerinin ortak &ccedil;alışması ile konulabilir.</p>\r\n\r\n<p>Her belirtiden korkmayın. Belkide hi&ccedil; bir sorun yoktur. Ama mutlaka ilgili b&ouml;l&uuml;mlere g&ouml;r&uuml;n&uuml;n. Erken tanı, erken eğitim ve tedavi demektir</p>\r\n\r\n<p>Bireyin yaşam kalitesine m&uuml;thiş bir katkınız olur. &Ouml;ğrenmesi gerekenleri bireysel eğitim programlarıyla &ouml;ğrenir. Belki biraz ila&ccedil; desteği gerekebilir.</p>\r\n\r\n<p>Kabullenmek zor olsada doğan &ccedil;ocukların en az % 25&rsquo;i &ccedil;eşitli sorunlar ile D&uuml;nya&rsquo;ya geliyor. Kabul etmezsek hayatlarında &ccedil;ok &ouml;nemli sorunlar yaşıyorlar.</p>\r\n\r\n<p>Sorunu kabullenirsek, yaşamları kolaylaşıyor. &Ccedil;&uuml;nk&uuml;, t&uuml;m &ouml;zel &ccedil;ocuklar i&ccedil;in, &ouml;zel devlet desteği var. &Ouml;zel kanunlar ve konu ile ilgili pozitif ayrımcılıklar var. Neden sizin &ccedil;ocuğunuz bu olanaklardan faydalanmasın?</p>\r\n\r\n<p><strong>Ayrıca unutmayınız ki, Yaşamımızı kolaylaştıran ya da &ccedil;ığır a&ccedil;an, devrim yapan bir &ccedil;ok insan, &ouml;zel insandı. &ldquo;Normal&rdquo; Değillerdi.</strong></p>\r\n\r\n<h2><strong>KİMLER Mİ?</strong></h2>\r\n\r\n<p>Leonardo da Vinci, Pablo Picasso, Auguste Rodin, Agatha Christie, Ernest Hemingway, Mark Twain, Harrison Ford, Tom Cruise, Jack Nicholson, Dustin Hoffman, Anthony Hopkins, Marlon Brando, Steve Jobs, Henry Ford, Tommy Hilfiger, Winston Churchill, George Washington, John F. Kennedy, Thomas Jefferson, Nelson Rockerfeller, John Lennon, Mozart, Beethoven, General George S. Patton, Steven Speilberg, Walt Disney, Albert Einstein, Thomas Edison, Michael Faraday, Alexander Graham Bell, Charles Darwin, Wright Kardeşler, Louis Pasteur, Dennis Bergkamp, Muhammad Ali, Carl Lewis ve&hellip;.. bilmediklerimiz&hellip;</p>\r\n\r\n<p>Unutmayın, yaygın gelişimsel bozukluklar yaşayan bireyler hasta değil, sadece farklı bakış a&ccedil;ıları ve devrimsel d&uuml;ş&uuml;nceleri olan insanlardır.</p>\r\n\r\n<h2>BU GRUPTA YER ALAN BOZUKLUKLAR</h2>\r\n\r\n<p><strong>Otizm,&nbsp;</strong><strong>Rett Sendromu,&nbsp;</strong><strong>&Ccedil;ocukluğun Dezintegratif Bozukluğu&nbsp;</strong><strong>Asperger sendromu&nbsp;</strong><strong>Atipik Otizm</strong>&lsquo; dir.</p>\r\n\r\n<h3><strong>Eğitim</strong></h3>\r\n\r\n<p>Tanı konan bireylerin erken &ccedil;ocukluk d&ouml;neminden başlayarak yetişkinlik d&ouml;nemindeki iş ve mesleki eğitim programları da dahil olmak &uuml;zere yaşam boyu s&uuml;ren kaliteli ve nitelikli bir &ouml;zel eğitim hizmeti almaları, bozukluğun t&uuml;r&uuml;ne, derecesine, bireyin yaşına ve &ouml;zelliklerine ve ihtiya&ccedil;larına g&ouml;re işlevsel olarak planlanmış eğitim programlarının sayısının artırılması, &ccedil;eşitlendirilmesi ile m&uuml;mk&uuml;n olabilmektedir.</p>\r\n\r\n<h3><strong>Yaygın Gelişimsel Bozukluklar Bireysel Eğitim</strong></h3>\r\n\r\n<p>Bireylerin, var olan yeterliklerinin en &uuml;st d&uuml;zeyde geliştirilerek sosyal yaşama etkin katılımının artırılmasının temel yolu eğitimdir.</p>\r\n\r\n<p>&Ouml;zel eğitime ihtiyacı olan t&uuml;m bireylerde olduğu gibi YGB olan bireylerde de eğitim ve ev ortamları uygun hale getirilip, işlevsel eğitim programları geliştirildiğinde, &ouml;ğretim s&uuml;reci bireysellik esasına g&ouml;re hazırlandığında, bağımsız yaşam becerilerinin edinilmesi ve toplumsal entegrasyon bağlamında &ouml;nemli ilerlemeler kaydedilmektedir.</p>\r\n\r\n<p>Bireylerin bağımsız yaşam becerilerini geliştirmeleri, davranış problemlerinin azaltılarak gereksinimleri olan beceriler kazanabilmeleri, uygun eğitim programlarıyla b&uuml;t&uuml;nleştirilmiş, yapılandırılmış ve zenginleştirilmiş &ouml;ğretim, ortam, erken yaştan itibaren sağlanmasıyla doğrudan ilişkilidir.</p>\r\n\r\n<p>Tanı konulduğu ilk andan itibaren destek eğitim programlarına alınarak gelişimlerinin desteklenmeleri gerekmektedir.</p>\r\n\r\n<p>Bireyin &ouml;rg&uuml;n eğitime dahil olduktan sonra da uygun destek eğitim programlarına katılması, gelişiminin en &uuml;st d&uuml;zeyde desteklenmesini sağlayacaktır.</p>\r\n\r\n<p>&Ouml;zel Eğitim Merkezimizde&nbsp;alanında uzman pedagog ve &ouml;zel eğitim &ouml;ğretmenleriyle &ccedil;ocuk ve gen&ccedil;lerimize y&ouml;nelik eğitim ve &ouml;ğretim &ccedil;alışmaları yapılmaktadır.</p>\r\n\r\n<p>&Ccedil;ocuklarınıza Otizm, Asperger Sendromu, Rett Sendromu, Dezintegratif Bozukluk, Atipik Otizm gibi bir tanı konmuşsa, bizi arayın, her sorunuz samimiyetle yanıtlanacaktır.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '19 Ekim 2018, 09:29', '-Yaygin-Gelisimsel-Bozukluklar', '', '', NULL, NULL),
(47, 1, 'otizimmss.jpg', 'Otizm', '<p>Otizm, İ&ccedil;ey&ouml;neliklik; toplumsal etkileşmelerden, ger&ccedil;eklerden ka&ccedil;arak, ger&ccedil;ekle ilgisi bulunmayan bir d&uuml;ş&uuml;nce evreni i&ccedil;inde yaşama &ouml;zelliği. Otizm iletişim ve sosyal gelişim alanlarındaki kısıtlılıkla seyreden ve &ccedil;ocuğun gelişimini &ouml;nemli derecede olumsuz etkileyen bir bozukluktur.</p>\r\n\r\n<p>Otizmin Belirtileri<br />\r\nOtistik &ccedil;ocuklarda normalden sapan davranışlar 4 grupta toplanır. Devamı</p>\r\n\r\n<p>Otizmin Nedenleri<br />\r\nOtizmin nedenleri konusunda kalıtımsal etkiler &uuml;zerinde &ouml;nemle durulmaktadır. Otizmi olan &ccedil;ocukların kardeşlerinin de otizm tanısı alma y&uuml;zdelerinin %3-6 arasında oranlara ulaştığı belirtilmektedir. Devamı</p>\r\n\r\n<p>Otistik &ccedil;ocukların ve ailelerin sorunlarla baş edebilme yolları<br />\r\nOtistik &ccedil;ocuğu olan aileler i&ccedil;in en &ouml;nemli soru, kendilerini nelerin beklediği ve &ccedil;ocuk ileride nasıl olacağıdır. &ouml;zellikle &ccedil;ok erken yaşlardaki duruma bakıp &ccedil;ocuğun ileride hangi noktaya geleceğini ve nasıl bir gelişim g&ouml;stereceğini kestirmek zordur.</p>\r\n\r\n<p>Aileler &ccedil;ocuk &ouml;ncelikli olarak konuşup konuşamayacağını sonra, okula gidip gidemeyeceğini giderse ne t&uuml;r g&uuml;&ccedil;l&uuml;klerle karşılaşacaklarını bilmek isterler. &ccedil;ocuğun i&ccedil;inde bulunduğu durumun erken fark edilmesi ve eğitim aldığı s&uuml;rece &ccedil;ocuğun izlenmesi, g&uuml;&ccedil;l&uuml; ve zayıf taraf ortaya &ccedil;ıkarılması aileye ve eğitimciye yol g&ouml;sterir.</p>\r\n\r\n<p>Otizmde ilerisi i&ccedil;in umudu artıran etkenlerden birincisi erken Tanıdır. Olabildiğince erken fark edilerek &ccedil;ocuğun &ccedil;ocuk ruh sağlığı kliniğine g&ouml;t&uuml;r&uuml;lmesi ve Tanının konması ya da en azından belirtilere y&ouml;nelik tedavi edici girişimlerin başlatılması &ccedil;ocuğun ilişki kurma g&uuml;&ccedil;l&uuml;ğ&uuml; ile baş edilmesini kolaylaştırır.</p>\r\n\r\n<p>Erken Tanı ve m&uuml;dahale:<br />\r\n&Ccedil;ocuğun kendine ve &ccedil;evresine farkındalığını, ilgilerini, &ouml;ğrenmesini ve becerilerini geliştirmesini hızlandırır. Ailenin ve &ccedil;ocuğa Tanı koyan uzmanların &ccedil;ocuğu gelişimsel d&uuml;zeyine uygun bir m&uuml;dahale Programına hızla başlatmasında yarar vardır.</p>\r\n\r\n<p>Okul &ouml;ncesi d&ouml;nemde konuşması gecikmiş ya da durmuş ve ilgi alanı kısıtlı yaşına uygun becerileri g&ouml;stermeyen bir &ccedil;ocuğun klinikte ayaktan bireysel tedavisinin yanı sıra uygun bir kreş ya da anaokuluna g&ouml;nderilmesi ve &Ouml;zel eğitim Programına alınması gerekir. Bu m&uuml;dahalede bireysel tedavi erken yaşlarda &ccedil;ocuğun ana babasının da katılımıyla farklı y&ouml;ntemlerle uygulanabilir.</p>\r\n\r\n<p>Anne baba ve &ccedil;ocuk birlikte oyun terapisine alınabilirler. Video kayıt y&ouml;ntemleri ile terapi y&uuml;r&uuml;t&uuml;lebilir.</p>\r\n\r\n<p>&Ccedil;ocuğun yaşı ve gereksinimi g&ouml;z &ouml;n&uuml;ne alınarak bireysel tedavi uygulanabilir.</p>\r\n\r\n<p>&Ccedil;ocuğun yaşıtları ile bir arada olmasının sağlanabilmesi i&ccedil;in bir kreşe ya da ana okuluna g&ouml;nderilmesi de tedavinin bir par&ccedil;asıdır. &ouml;zellikle taklit becerisinin gelişimi ile otistik &ccedil;ocuk yaşıtlarıyla bir arada olmaktan yararlanır. Dil gelişimi hızlanır. Duygusal ve sosyal gelişimi desteklenmiş olur.</p>\r\n\r\n<p>Otistik &ccedil;ocukların kendi haline bırakılmaması gerekir. Bu nedenle belirli bir d&uuml;zen i&ccedil;inde eğitim ve &ouml;ğretim olanaklarından yararlanması sağlanmalıdır. ilk&ouml;ğretim &ccedil;ağına geldiğinde de okula gitmelidir.</p>\r\n\r\n<p>Otistik &ccedil;ocuğun otistik belirtilerinin derecesi de gelişimini olumsuz etkileyebilecek bir diğer fakt&ouml;rd&uuml;r. Belirtiler &ccedil;ok ağır ve &ccedil;ocuğun yaşı b&uuml;y&uuml;kse tedavisi klinikte aralıklı izlenerek ve bir &ouml;zel eğitim kurumuna gitmesi sağlanarak y&uuml;r&uuml;t&uuml;l&uuml;r. &ccedil;eşitli sosyal ve sportif etkinliklerden de yararlanması m&uuml;mk&uuml;nd&uuml;r.</p>\r\n\r\n<p>Otistik &ccedil;ocuğun gelişimini etkileyen bir diğer fakt&ouml;r de &ccedil;ocuğun i&ccedil;in de bulunduğu &ccedil;evredir. Otistik &ccedil;ocukların da t&uuml;m &ccedil;ocuklar gibi bol uyarana gereksinimleri vardır. &ccedil;ocuğun uyaranları kabul derecesine g&ouml;re &ccedil;evresi d&uuml;zenlenmelidir.</p>\r\n\r\n<p>&Ccedil;ocuğa; dokunmak, onunla konuşmak &ccedil;evresinde olup biteni onun anlayabileceği gibi sade bir dille ona anlatımak, yaşadıklarını, birlikte ge&ccedil;irdikleri anları &ccedil;ocuğa anlatımak, Masal ve hikaye okumak, resimli kitaplara bakmak ve g&uuml;nl&uuml;k kullanım alanı i&ccedil;indeki eşyaların adını, işlevini &ouml;ğretmek &ouml;nemlidir.</p>\r\n\r\n<p>Oyun alanı, oyuncaklar, yaşıtlarıyla birlikte olma, sosyal yaşamın bir par&ccedil;ası olma &ccedil;ocuğun gelişimini hızlandırır.</p>\r\n\r\n<p>Otistik &ccedil;ocuklarla ilgilenirken birinci adım &ccedil;ocukla ilişki kurmaktır: &Ccedil;ocukla ilişki kurarken, eğer &ccedil;ocuğun tercih ettiği bir ilişki ya da oyun varsa, &ouml;ncelikle onun se&ccedil;ilmesi ve s&uuml;rd&uuml;r&uuml;lmesi gerekir.</p>\r\n\r\n<p>&Ccedil;ocuğun ilişki bi&ccedil;imi ya da oyunu tek d&uuml;ze olsa bile, bu oyun ya da ilişki şekli, yetişkin tarafından zaman i&ccedil;inde zenginleştirilebilir. Ancak otistik &ccedil;ocukların &ccedil;oğu ilişki aramaz, kendi başına yineleyici davranışlar yaparlar. Bu durum da anne babayı &uuml;mitsizliğe d&uuml;ş&uuml;r&uuml;r ve &ccedil;abuk pes etmelerine neden olabilir.</p>\r\n\r\n<p>Bu durumda ilişki kurmanın &ccedil;eşitli yolları denenmeli ve pes etmeden uygun olan yol bulunmalıdır. Genellikle her &ccedil;ocuk gıdıklanma, hoplatma, kucakta y&uuml;z y&uuml;ze oturarak sallanma ve şarkı s&ouml;yleme gibi oyuncaksız oynanabilen oyunlardan keyif alır: &Ccedil;ocukla ilişki kurmaya &ccedil;alışırken ve oyunlar oynanırken;<br />\r\n&Ccedil;ocukla y&uuml;z y&uuml;ze ve g&ouml;z g&ouml;ze gelmeye &ccedil;alışılmalıdır</p>\r\n\r\n<p>&Ccedil;ocukla oynayan kişinin oyunlara keyifle ve i&ccedil;tenlikle katılması &ouml;nemlidir. Mekanik ve &ouml;dev gibi yapılan oyunlara &ccedil;ocuklar da i&ccedil;tenlikle katılmazlar. &Ccedil;abuk geri &ccedil;ekilirler.<br />\r\nilişki kurma yollarından bir diğeri de, hayali oyunların geliştirilmesidir. Otizmi olan &ccedil;ocukların temel belirtilerinden bir tanesi de kendiliğinden hayali oyuna başlamamaları ya da katılmamalarıdır. Bu t&uuml;r oyunlar i&ccedil;in, evcilik oyuncakları gibi hayali oyunlar oynayabileceği oyuncaklar gerekir.</p>\r\n\r\n<p>G&uuml;nl&uuml;k yaşamını anlayabileceği ve anlamlandırabileceği yeme yedirme, uyku, alışveriş ve pikniğe gitme gibi oyunların oynanması yararlıdır. Oynanan oyunlar &ccedil;ocuğun ilgisini &ccedil;ekmiyormuş gibi g&ouml;r&uuml;nse bile oyun s&uuml;rd&uuml;r&uuml;lmelidir. Oyuna ilgi &ccedil;ekebilmek i&ccedil;in &ouml;nce oyuncağın işlevi g&ouml;sterilir sonra &ccedil;ocuğun yaşantısıyla ilgili &ouml;nemli olaylar oyunlaştırılır.</p>\r\n\r\n<p>B&uuml;t&uuml;n &ccedil;ocuklar i&ccedil;in yemek yemek, yedirmek, uyumak ve uyutmak, banyo yapmak berbere gitmek, doktora gitme &ouml;nemli olaylardır. Hayali oyunlar &ccedil;ocuğun belleğinin gelişmesini, hayal kurmasını, olayları akılda tutmasını sağlar. yaşam olayları, g&uuml;nl&uuml;k yapılan faaliyetler kısa hayali oyun senaryoları haline getirilip, 2-3 c&uuml;mlelik oyunlar şeklinde oynanabilir.</p>\r\n\r\n<p>Eğer oyun &ccedil;ocuğun ilgisini &ccedil;ekmediyse 4-5 dakika s&uuml;rd&uuml;r&uuml;l&uuml;r ve belirli sonu&ccedil; B&ouml;l&uuml;m&uuml;yle sonlandırılır. Bu oyunlar esnasında &ouml;ncelikle &ccedil;ocuğun ilgilendiği oyun &uuml;zerinden ve onu izleyerek oynamaya dikkat edilmelidir.</p>\r\n\r\n<p>Etkinlikler &ccedil;ocuğun gelişimsel d&uuml;zeyine, dikkatini toplama s&uuml;resine, bellek kapasitesine ve el becerisine uygun olmalıdır. &ccedil;ocuğun gelişim d&uuml;zeyinin &uuml;st&uuml;ndeki etkinlikler onu başarısız hissettireceğinden hevesini azaltacaktır.</p>\r\n\r\n<p>&Ccedil;ocukla ilişki kurulurken ve eğitimde kullanılan dil &ccedil;ocuğun d&uuml;zeyine uygun olmalıdır. İletişim problemi olan &ccedil;ocuk i&ccedil;in kısa ve net c&uuml;mleler kullanmak &ouml;nemlidir. &Ccedil;ocuğun oyun ve eğitim saatlerini tek ve uzun bir s&uuml;rede yapmaktansa kısa s&uuml;relerde sık sık tekrar ekmekte yarar vardır.</p>\r\n\r\n<p>&Ccedil;ocuk ile konuşurken onun g&ouml;z seviyesine eğilmek ve ona bakarak konuşmak gerekir. &Ccedil;ocuktan bir şey yapması istenirken kısa ve net c&uuml;mleler kullanılmalıdır, &ouml;rneğin&quot;buraya gel&quot; gibi ve vurgulanarak s&ouml;ylenmelidir.</p>\r\n\r\n<p>&Ccedil;evrede &ccedil;ocuğun dikkatini dağıtacak uyaranlar olmamasına &ouml;zen g&ouml;sterilmelidir. Oyun kurulacak malzeme ile &ccedil;ocuğun &ouml;nceden serbest&ccedil;e oynayıp keşfetmesi &ccedil;ocuğun oyuna merakını arttırır. &Ccedil;ocuğun dikkatini toplamasını kolaylaştırmak i&ccedil;in abartılı mimikler, tonlamalar yapmak etkili olacaktır.</p>\r\n\r\n<p>İlişki kurma aşamasında zorluk &ccedil;ekilen davranışlar arasında; g&ouml;z g&ouml;ze gelme adıyla &ccedil;ağrıldığında bakma, selamlaşma, anlama, taklit, istekleri yerine getirme, farkındalık davranışları sayılabilir. G&ouml;z g&ouml;ze gelme ve adı s&ouml;ylendiğinde bakma sağlandıktan sonra, ilişki kurma boyutunda &ccedil;ok &ouml;nemli bir mesafe kaydedilmiş olur.</p>\r\n', '19 Ekim 2018, 09:38', 'Otizm', '', '', NULL, NULL),
(48, 1, 'hiz2.jpg', 'Duyu Terapisi - Duyusal Entegrasyon', '<p>İnsan v&uuml;cudunun bazı b&ouml;lgeleri uyarılarak duyuların birbirleriye uyumlu &ccedil;alışmaları sağlanabilir. Duyusal işlemler merkezi sinir sisteminde ger&ccedil;ekleşir. Duyularımız uyumlu bir şekilde &ccedil;alıştığı taktirde, beynimiz gelişime, yeni bilgilere ve &ouml;ğrenmeye daha a&ccedil;ık olur.</p>\r\n\r\n<p>Duyusal sorunlar nasıl oluşur?<br />\r\nDuyusal alıcılar, v&uuml;cuttan bilgiyi alarak merkezi sinir sistemindeki n&ouml;ronlar &uuml;zerinden beyine g&ouml;nderirler. Beyin bu bilgiyi alıp hızlıca analiz ettikten sonra, v&uuml;cudumuzun ilgili b&ouml;lgesinin alına mesaja bir tepki vermesini sağlar.</p>\r\n\r\n<p>Duyusal b&uuml;t&uuml;nleme ve yaygın gelişimsel bozukluklar<br />\r\nYaygın gelişimsel bozukluğu olan bireyler &ccedil;evrelerinden ve v&uuml;cutlarından duyularıyla aldıkları bilgileri algılama, anlamlandırma ve genellemede sıkıntılar yaşarlar. Duyularını kullanmada g&uuml;&ccedil;l&uuml;klerle karşılaşıp, genellikle tek y&ouml;nl&uuml; duyu kullanırlar.</p>\r\n\r\n<p>Duyusal b&uuml;t&uuml;nleme (entegrasyon) terapisi; Bireyin t&uuml;m duyularını aynı anda kullanmasını sağlayarak uyum becerilerini geliştirir. &Ccedil;eşitli tehlikelere karşı &ouml;nlem alabilmelerini sağlar. Duyusal b&uuml;t&uuml;nleme terapisi y&ouml;ntemiyle, bireylerin duyularını geliştirip ve onların fizyolojik, sosyolojik ve psikolojik alanlarda uygun davranışlarının gelişmesi ama&ccedil;lanır.</p>\r\n\r\n<p>Duyusal entegrasyon y&ouml;ntemiyle; bireyin &ccedil;evreye uygun hareket etme becerileri gelişir.</p>\r\n\r\n<p>Duyular ne işe yarar?<br />\r\nKonsantre olma yeteneğini sağlarlar.</p>\r\n\r\n<p>Yeteneklerin d&uuml;zenlenmesini sağlarlar.</p>\r\n\r\n<p>Kişiliğini yansıtmasına ve &ouml;zsaygının gelişimini sağlarlar.</p>\r\n\r\n<p>Kendini kontrol etmeyi sağlarlar.</p>\r\n\r\n<p>&Ouml;zg&uuml;veni sağlarlar.</p>\r\n\r\n<p>Akademik &ouml;ğrenme yeteneğini oluştururlar.</p>\r\n\r\n<p>Soyut d&uuml;ş&uuml;nce ve akıl y&uuml;r&uuml;tme kapasitesinin oluşmasını sağlarlar.</p>\r\n\r\n<p>V&uuml;cudun ve beynin uyum i&ccedil;ine &ccedil;alışmasını sağlarlar.<br />\r\nBaşardığımız bir &ccedil;ok işlevsel beceriyi duyu sistemlerimizin bize sağladığı olanaklar ile ger&ccedil;ekleştiririz. Yaygın gelişimsel bozukluklar ve Dikkat eksikliğği ve hiperaktivite tanılı bireylerde &ouml;ğrenme, iletişim, yaşamsal aktiviteleri y&uuml;r&uuml;tme, doğru tepkiler oluşturma, soyut d&uuml;ş&uuml;nme gibi alanlarda sıkıntılar yaşanabilir.</p>\r\n\r\n<p>Duyusal b&uuml;t&uuml;nleme sorunu yaşayan &ccedil;ocuklarda en az 2 duyu arasında uyum sorunu yaşanmaktadır.</p>\r\n\r\n<p>İnsan v&uuml;cudunda 7 duyu vardır.<br />\r\nDokunma, işitme, g&ouml;rme, koku alma, tat alma, denge kurma, ve derin duyu.</p>\r\n', '19 Ekim 2018, 09:35', 'Duyu-Terapisi---Duyusal-Entegrasyon', '', '', NULL, NULL),
(49, 1, 'hiz1.jpg', 'Dil ve Konuşma Terapisi', '<p>Dil ve Konuşma Sorunlarıları ile ilg&shy;ili araştırmalara dayanarak konuş&shy;ma&nbsp; bozukluklarının giderme&nbsp; ve&nbsp;<br />\r\n&ouml;nleme y&ouml;ntemlerini oluşturuyor.<br />\r\nPedagojik bir bilim olarak dil ve konuşma terapisi aynı zamanda tıbbi bilimlere bağlı ki bu bilimler&shy;le yakın bir işbirliği olmadan herhangi bir ciddi&nbsp; konuşma bozukluğunun araştırması ve tedavisi m&uuml;mk&uuml;n değil. &Ouml;rneğin, bir&ccedil;ok dil ve konuşma bozukluğunun nedeni&nbsp; olan&nbsp; beyin hasarları s&ouml;z konusu olduğunda tıbbi araştırma ve teşhis koyma me&shy;totları uygulanıyor ve var olan bozuklukların giderilmesi veya azalmasını sağlayan ve b&ouml;yle&shy;likle de dil ve konuşma terapisi&shy;nin etkisini artıran gerekli ila&ccedil;lar kullanılıyor.</p>\r\n\r\n<p>Ayrıca dil ve konuşma terapisi dil bilimine de bağlı. &Ccedil;&uuml;nk&uuml; konuşma bozuklukları tedavisi i&ccedil;in terapistin &ccedil;ocukların konuşma gelişmesi&shy;nin temel prensipleri dahil olarak dil standartlarını iyi derecede bilmesi şart. &Ouml;rneğin, &ccedil;ocukların hi&ccedil; konuşmaması veya ağır dil ve konuşma&nbsp; &nbsp;bozukluklarının&nbsp; ol&shy;ması durumunda, bu &ccedil;ocuklara konuşmanın normal gelişme&nbsp; s&uuml;re&shy;cinde ilk ortaya &ccedil;ıkan kelimeler ve s&ouml;zc&uuml;k grupları &ouml;ncelikli olarak &ouml;neriliyor.</p>\r\n\r\n<p>Dil ve konuşma terapisinin te&shy;ori ve uygulamasında, bilişsel s&uuml;re&ccedil;lerin fizyolojisi, pedagoji, psi&shy;koloji ve diğer bilimlerin verileri kul&shy;lanılmaktadır. Dil ve konuşma&nbsp; bo&shy;zuklukları tedavisinde iyi sonu&ccedil;ları elde etmek i&ccedil;in dil ve konuşma bozuklukları uzmanı sadece bir pedagog olarak değil, iyi bir psi&shy;kolog olarak da hastaya doğru bir yaklaşım sergilemesi ve g&uuml;venini kazanması gerekmektedir.</p>\r\n\r\n<p>&Ccedil;ocuğun ağır dil ve konuşma bozukluklarının olması ve &ouml;zellikle hi&ccedil; konuşmaması, karakter yapısını da olumsuz bir şekilde etkilemekte ve davranış değişik&shy;Iiklerine yol a&ccedil;maktadır. Bunun nedeni, &ccedil;ocuğun en&nbsp; temel ihtiya&ccedil;larını bile giderememesidir. &Ouml;rneğin, &ccedil;ocuk acıkabilir, susayabilir, bir yere gitme veya bir şey yapma ar&shy;zusunu duyabilir ama etrafındakil&shy;erin bunu her zaman doğru bilm&shy;eleri m&uuml;mk&uuml;n değildir; &ccedil;ocuk ise bu durumlarda ağlamaya başlay&shy;abilir, hatta &ouml;fke krizine bile girebil&shy;ir. Bu tarz davranış bi&ccedil;imleri &ccedil;oğu zaman kalıplaşmakta ve &ccedil;ocuğun yetişkinler ve diğer &ccedil;ocuklarla olan ilişkilerini olumsuz etkilemek&shy;tedir.</p>\r\n\r\n<p>Bir &ouml;rnek verelim; &uuml;&ccedil; yaşında bir &ccedil;ocuk konuşamıyor ve annesin&shy;den uzun s&uuml;re istediğini alamadıktan sonra kendini yere atıyor ve &ccedil;aresizlikten ayaklarını yere vuruy&shy;or. O an odaya giren komşunun elinde bir bardak su g&ouml;r&uuml;yor ve hemen kalkıp kadına doğru koşuy&shy;or. &Ccedil;ocuk susamış ve sadece su istiyordu fakat el işaretleriyle bile istediğini anlatamadı... Bu durum&shy;ların belli bir sıklıkla tekrar olmasını bir d&uuml;ş&uuml;n&uuml;n.</p>\r\n\r\n<p>Dil ve konuşma bozukluk&shy;ları olan insanlar, &#39;ikincil psikolojik tabakalama&#39; denilen konuşma&nbsp; bo&shy;zukluğuna olan tep&shy;kilerden dolayı bir&ccedil;ok sorun yaşıyor. Bu tarz ta&shy;bakalamaların oluşması, &ccedil;ocuğun konuşma aracılığıyla temas kurmaya &ccedil;alıştığında &ccedil;oğu kez başarısız olması ve etrafındakilerin konuşma bozukluğuna yanlış tepki vermelerinden (su&ccedil;lamalar, alay etme gibi tepkiler) kaynaklanıyor.</p>\r\n\r\n<p>ikincil psikolojik tabakalamalar&shy; dan dolayı olduk&ccedil;a hafif konuşma bozukluğu (normal konuşan insan&shy;ların neredeyse fark etmediği bo&shy;zukluklar) bile bu konuşma&nbsp; bozukluğu olan kişi i&ccedil;in bir felaket olarak algılanmak&shy;tadır. Bu duygular dil ve konuş&shy;ma&nbsp; bozukluğu tedavisine de en&shy;gel olabilir; ki bu &ouml;zellikle&nbsp; bir&ccedil;ok kekemelik vakası i&ccedil;in ge&ccedil;erlidir. Bundan dolayı dil ve konuşma bozukluklarının, ikincil psikolojik ta&shy;bakalamaların hen&uuml;z oluşmadığı veya belirgin olmadığı erken yaşlarda tedavi edilmesi gerek&shy;mektedir.</p>\r\n\r\n<p>Dr. Sima Arslan / Dil ve Konuşma Terapisti</p>\r\n\r\n<p>Dil ve konuşma terapisi; &ccedil;ocuklarda ve erişkinlerde konuşma, dil, iletişim, yutma bozukluklarının y&ouml;netimi ve tedavisi ile ilgili uygulamalardır.</p>\r\n\r\n<p>Dil ve konuşma terapisti (DKT); alanında lisans eğitimi veren fak&uuml;lte veya y&uuml;ksekokullardan mezun veya diğer lisans eğitimleri &uuml;zerine dil ve konuşma terapisi alanında y&uuml;ksek lisans veya doktora &ouml;ğrenimi g&ouml;rm&uuml;ş; bireylerin sesi, konuşma ve dil bozukluklarının &ouml;nlenmesi i&ccedil;in &ccedil;alışmalar yapan ve ilgili uzman tabip tarafından teşhisi konulmuş yutkunma, dil ve konuşma bozukluklarının rehabilitasyonunu sağlayan sağlık meslek mensubudur.</p>\r\n\r\n<p>Dil ve Konuşma terapisi nasıl yapılır?<br />\r\nDil M&uuml;dahale Faaliyetleri:<br />\r\nDil ve konuşma terapisti; dil gelişimini teşvik etmek i&ccedil;in oyun, konuşma, resimler, kitaplar ve nesneler vasıtasıyla &ccedil;ocukla iletişime ge&ccedil;er. Terapist, doğru telaffuzu modelleme ve dil becerileri oluşturmak i&ccedil;in tekrarlama egzersizlerini kullanabilir.<br />\r\nArtik&uuml;lasyon Terapisi:</p>\r\n\r\n<p>Hece veya ses &uuml;retiminde, egzersizler terapistin &ccedil;ocuk i&ccedil;in doğru modeli seslemesi ve hecelemesini i&ccedil;erir. Terapistin &ccedil;ocukları teşvik ettiği oyunun seviyesi, &ccedil;ocuğun yaşına uygun ve &ouml;zel ihtiya&ccedil;ları ile ilgilidir. Terapist, fiziksel olarak &quot;r&quot; sesi gibi bazı seslerin nasıl &ccedil;ıkarılacağını dil hareketleriyle &ccedil;ocuğa g&ouml;sterir.<br />\r\nOral-Motor/Beslenme ve Yutma Terapisi:</p>\r\n\r\n<p>Terapist; y&uuml;z masajı, &ccedil;eşitli dil, dudak ve &ccedil;ene egzersizleri de dahil olmak &uuml;zere ağız kaslarını g&uuml;&ccedil;lendirici aktiviteleri d&uuml;zenler. Ayrıca farklı yiyecek dokuları ve ısılarını kullanarak &ccedil;ocuğun yutma farkındalığını y&uuml;kseltir.<br />\r\nKimler dil ve konuşma terapisine ihtiya&ccedil; duyar?<br />\r\nDil ve Konuşma terapisi gerektiren durumları kısaca ş&ouml;yle &ouml;zetleyebiliriz:</p>\r\n\r\n<p>Artik&uuml;lasyon bozukluğu: Bazı sesleri s&ouml;yleyememe ya da yanlış s&ouml;yleme.<br />\r\nKonuşurken sesin kısılması, &ccedil;atlaması gibi ses problemleri,<br />\r\nGecikmiş konuşma, &ouml;rneğin &uuml;&ccedil; yaşına gelmiş bir &ccedil;ocuğun konuşmaması ya da &ccedil;ok kısa c&uuml;mleler kurarak konuşması,</p>\r\n\r\n<p>Kekemelik,</p>\r\n\r\n<p>Afazi, dizartri gibi beyin kanaması, kaza gibi travmatik beyin hasarlarının neden olduğu dil ve konuşma bozuklukları,<br />\r\nYutma problemleri,<br />\r\nDown Sendromu, Otizm gibi nedenlerden kaynaklanan dil ve konuşma bozuklukları,<br />\r\nDudak ve damak yarıklığı gibi anomalilere bağlı dil ve konuşma problemleri,<br />\r\nİşitme engeline bağlı dil ve konuşma bozuklukları</p>\r\n\r\n<p>Rehabilitasyon merkezimizde, alanında uzman terapistler y&ouml;netiminde dil ve konuşma bozuklukları konusunda terapi hizmeti verilmektedir. Kekemelik vb. dil ve konuşma sorunlarına &ouml;m&uuml;r boyu mahkum değilsiniz.&nbsp;</p>\r\n', '19 Ekim 2018, 09:32', 'Dil-ve-Konusma-Terapisi', '', '', NULL, NULL),
(50, 1, 'ogrenme_guclugu_19.jpg', 'Öğrenme Güçlüğü', '<p>&Ouml;ğrenme g&uuml;&ccedil;l&uuml;ğ&uuml; (disleksi), bir &ccedil;ocuğun zekası normal yada normalin &uuml;st&uuml;nde olmasına rağmen dinleme, d&uuml;ş&uuml;nme, anlama, kendini ifade etme, okuma-yazma veya matematik becerilerinde yaşıtlarına ve zekasına oranla d&uuml;ş&uuml;k başarı g&ouml;stermesidir.</p>\r\n\r\n<h2>&Ouml;ĞRENME G&Uuml;&Ccedil;L&Uuml;Ğ&Uuml; (DİSLEKSİ-DYSLEXİA) NEDİR?</h2>\r\n\r\n<p>&Ouml;ğrenme g&uuml;&ccedil;l&uuml;ğ&uuml; (disleksi), bir &ccedil;ocuğun zekası normal yada normalin &uuml;st&uuml;nde olmasına rağmen dinleme, d&uuml;ş&uuml;nme, anlama, kendini ifade etme, okuma-yazma veya matematik becerilerinde yaşıtlarına ve zekasına oranla d&uuml;ş&uuml;k başarı g&ouml;stermesidir.</p>\r\n\r\n<p>&Ouml;ğrenme g&uuml;&ccedil;l&uuml;ğ&uuml; &ccedil;eken &ccedil;ocuklarda &ouml;ğrenme ve algılama sorunu &ccedil;ocuğun doğumu ile başlar. Eğitim s&uuml;reci i&ccedil;inde edinilemez. Yaşam boyu s&uuml;ren bir bozukluktur. Dil gelişimi ve kullanımı, konuşma, okuma-yazma, matematik becerilerini etkileyen bir sorun olduğu i&ccedil;in, bireyin eğitimini, mesleğini, sosyal ilişkilerini, g&uuml;nl&uuml;k aktivitelerini, benlik saygısını etkiler.</p>\r\n\r\n<p>&Ccedil;ocuğun zihinsel yeteneği olmasına rağmen, akademik a&ccedil;ıdan gerilik g&ouml;stermesi, &ouml;ğrenme g&uuml;&ccedil;l&uuml;ğ&uuml;n&uuml;n en &ccedil;arpıcı &ouml;zelliğidir. Bir&ccedil;ok &ccedil;ocuk i&ccedil;in &ouml;ğrenme g&uuml;&ccedil;l&uuml;ğ&uuml; okula başladıklarında ve akademik beceriler kazanımakta başarısız olduklarında g&ouml;ze &ccedil;arpar.</p>\r\n\r\n<h3>&Ouml;zel &ouml;ğrenme bozuklukları</h3>\r\n\r\n<p>&ndash; Beyindeki bazı farklılıklar nedeniyle &ouml;ğrenme s&uuml;re&ccedil;lerinden bir veya bir ka&ccedil;ında aksama olmasıyla ortaya &ccedil;ıkar.<br />\r\n&ndash; Her &ccedil;ocuğun iyi olduğu yada zorlandığı alanlar vardır.<br />\r\n&ndash; Her &ccedil;ocuk kendine &ouml;zg&uuml;d&uuml;r.<br />\r\n&ndash; G&ouml;rme işitme sorununa bağlı değildir.</p>\r\n', '19 Ekim 2018, 09:25', 'Ogrenme-Guclugu', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE IF NOT EXISTS `iletisim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `konu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `telefon` longtext COLLATE utf8_turkish_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=84 ;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`id`, `isim`, `email`, `konu`, `mesaj`, `tarih`, `ip`, `telefon`) VALUES
(73, 'Ahmet CAN', 'demo@example.com', 'konu', 'selam', '19 Temmuz 2016, 18:49', '::1', '05444444444'),
(74, 'Serkan BEY', 'demo@example.com', 'konu', 'ddd', '20 Temmuz 2016, 16:44', '::1', '05444444444'),
(72, 'osman bey', 'demo@example.com', 'konu', 'dd', '19 Temmuz 2016, 16:20', '::1', '05444444444'),
(71, 'Ahmet CAN', 'demo@example.com', 'konu', 'eeeeeeee', '19 Temmuz 2016, 13:58', '::1', '05444444444'),
(76, 'İSMAİL CAN', 'admin@admin.com', 'konu', 'MESAJ KONUSU', '21 Temmuz 2016, 20:08', '::1', NULL),
(77, 'Ahmet CAN', 'serkan@bey.com', 'konu', 'ghn', '22 Temmuz 2016, 15:59', '::1', '0222222222'),
(78, 'Ahmet CAN', 'serkan@bey.com', 'konu', 'fgh', '22 Temmuz 2016, 16:01', '::1', '0222222222'),
(79, 'Ahmet CAN', 'serkan@bey.com', 'konu', 'dddd', '25 Temmuz 2016, 12:20', '::1', '05444444444'),
(80, 'Ahmet CAN', 'demo@example.com', 'konu', 'mesajdır', '25 Temmuz 2016, 15:40', '::1', '05444444444'),
(81, 'Ahmet CAN', 'demo@example.com', 'konu', 'mesajdır', '25 Temmuz 2016, 15:41', '::1', '05444444444'),
(82, 'Ahmet CAN', 'demo@example.com', 'Proje Hakkında', 'edfgyjkl', '25 Temmuz 2016, 15:41', '::1', '0222222222'),
(83, 'İSMAİL CAN', 'demo@example.com', 'Konu - Pick Up', 'mnn m&ouml;', '25 Temmuz 2016, 19:25', '::1', '05444444444');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `katalog`
--

CREATE TABLE IF NOT EXISTS `katalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kat_on` int(11) NOT NULL,
  `kat_arka` int(11) NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=18 ;

--
-- Tablo döküm verisi `katalog`
--

INSERT INTO `katalog` (`id`, `kat_on`, `kat_arka`, `resim`, `durum`) VALUES
(13, 0, 0, '2.jpg', 1),
(14, 0, 0, '3.jpg', 1),
(16, 1, 0, '1423581433__tye.jpg', 1),
(17, 0, 1, 'slider_1.jpg', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `markalar`
--

CREATE TABLE IF NOT EXISTS `markalar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  `ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `ingaciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `facebook` longtext COLLATE utf8_turkish_ci,
  `twitter` longtext COLLATE utf8_turkish_ci,
  `pinterest` longtext COLLATE utf8_turkish_ci,
  `mevki` longtext COLLATE utf8_turkish_ci,
  `sirasi` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=67 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projeler`
--

CREATE TABLE IF NOT EXISTS `projeler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` int(11) NOT NULL,
  `adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ingaciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `kod` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `begen` int(11) NOT NULL,
  `firma` longtext COLLATE utf8_turkish_ci,
  `deger` longtext COLLATE utf8_turkish_ci,
  `mevki` longtext COLLATE utf8_turkish_ci,
  `alan` longtext COLLATE utf8_turkish_ci,
  `yapim` longtext COLLATE utf8_turkish_ci,
  `sorumlu` longtext COLLATE utf8_turkish_ci,
  `fiyat` longtext COLLATE utf8_turkish_ci,
  `ozellik` longtext COLLATE utf8_turkish_ci,
  `oda` longtext COLLATE utf8_turkish_ci,
  `sabah` longtext COLLATE utf8_turkish_ci,
  `hayvan` longtext COLLATE utf8_turkish_ci,
  `wifi` longtext COLLATE utf8_turkish_ci,
  `park` longtext COLLATE utf8_turkish_ci,
  `tv` longtext COLLATE utf8_turkish_ci,
  `klima` longtext COLLATE utf8_turkish_ci,
  `spor` longtext COLLATE utf8_turkish_ci,
  `ysayi` longtext COLLATE utf8_turkish_ci,
  `yildiz` longtext COLLATE utf8_turkish_ci,
  `obanyo` longtext COLLATE utf8_turkish_ci,
  `kilit` longtext COLLATE utf8_turkish_ci,
  `oservis` longtext COLLATE utf8_turkish_ci,
  `teras` longtext COLLATE utf8_turkish_ci,
  `uyandirma` longtext COLLATE utf8_turkish_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=57 ;

--
-- Tablo döküm verisi `projeler`
--

INSERT INTO `projeler` (`id`, `kategori`, `adi`, `seo`, `resim`, `durum`, `aciklama`, `tarih`, `ingaciklama`, `ingadi`, `kod`, `begen`, `firma`, `deger`, `mevki`, `alan`, `yapim`, `sorumlu`, `fiyat`, `ozellik`, `oda`, `sabah`, `hayvan`, `wifi`, `park`, `tv`, `klima`, `spor`, `ysayi`, `yildiz`, `obanyo`, `kilit`, `oservis`, `teras`, `uyandirma`) VALUES
(50, 0, 'Marka 2', 'Marka-2', 'low_10.png', 1, '<p>Long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem.</p>\r\n', '19-10-2018', 'http://www.google.com', '17 Haziran 2016', '', 0, 'Deneme A.Ş.', 'Html & Php & Js', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, 0, 'Marka 2', 'Marka-2', 'low_5.png', 1, '<p>Long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem.</p>\r\n', '19-10-2018', 'http://www.google.com', '17 Haziran 2016', '', 0, 'Deneme A.Ş.', 'Html & Php & Js', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 0, 'Dinleme ve Okuma Eğitimi', 'Dinleme-ve-Okuma-Egitimi', 'xxw_1.png', 1, '<p>Long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem.</p>\r\n', '19-10-2018', 'http://www.google.com', '17 Haziran 2016', '', 0, 'Dinleme ve Okuma Eğitimi', 'Php & Js', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 0, 'Deneme İiş', 'Deneme-Iis', 'low_1.png', 1, '<p>Long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem.</p>\r\n', '19-10-2018', 'http://www.google.com', '17 Haziran 2016', '', 0, 'Deneme A.Ş.', 'Html & Php & Js', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 0, 'Sistem Avcılık', 'Sistem-Avcilik', 'low_3.png', 1, '<p>Long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem.</p>\r\n', '19-10-2018', 'http://www.google.com', '17 Haziran 2016', '', 0, 'Deneme A.Ş.', 'Html & Php & Js', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 0, 'Marka 2', 'Marka-2', 'low_8.png', 1, '<p>Long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem.</p>\r\n', '19-10-2018', 'http://www.google.com', '17 Haziran 2016', '', 0, 'Deneme A.Ş.', 'Php & Js', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `proje_kategori`
--

CREATE TABLE IF NOT EXISTS `proje_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  `kategori_ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `kod` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=42 ;

--
-- Tablo döküm verisi `proje_kategori`
--

INSERT INTO `proje_kategori` (`id`, `kategori_adi`, `resim`, `seo`, `durum`, `kategori_ingadi`, `kod`) VALUES
(39, 'Web Design', 'erk2.jpg', 'Web-Design', 1, '', ''),
(40, 'Logo', '', 'Logo', 1, '', ''),
(41, 'Broşür', '', 'Brosur', 1, '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `proje_resim`
--

CREATE TABLE IF NOT EXISTS `proje_resim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resim_id` int(11) NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=72 ;

--
-- Tablo döküm verisi `proje_resim`
--

INSERT INTO `proje_resim` (`id`, `resim_id`, `resim`) VALUES
(34, 23, '3.jpg'),
(33, 23, '2.jpg'),
(29, 24, 'image_2.jpg'),
(30, 24, 'image_3.jpg'),
(36, 25, '3_1.jpg'),
(40, 27, 'single_project_image_7.jpg'),
(39, 25, '6.jpg'),
(55, 34, 'cS_22.jpg'),
(54, 34, 'cS_21.jpg'),
(59, 35, 'cS_46.jpg'),
(58, 35, 'cS_45_1.jpg'),
(49, 36, 'room_image_seven.png'),
(50, 36, 'room_image_ten.jpg'),
(51, 37, 'room_image_seventeen.png'),
(52, 37, 'showcase_slider_five.jpg'),
(56, 34, 'cS_23.jpg'),
(57, 34, 'cS_45.jpg'),
(60, 38, 'thumb_1.jpg'),
(61, 38, 'thumb_2.jpg'),
(62, 38, 'thumb_3.jpg'),
(63, 39, 'thumb_4.jpg'),
(64, 39, 'thumb_5.jpg'),
(65, 39, 'thumb_6.jpg'),
(66, 54, 'news_tree.jpg'),
(67, 54, 'news_img_2.jpg'),
(68, 54, 'blog_side_heading_3_img.jpg'),
(70, 40, 'news_tree_1.jpg'),
(71, 40, 'news_img_3.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rez`
--

CREATE TABLE IF NOT EXISTS `rez` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci NOT NULL,
  `telefon` text COLLATE utf8_turkish_ci NOT NULL,
  `seo` text COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` text COLLATE utf8_turkish_ci NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `gel` text COLLATE utf8_turkish_ci NOT NULL,
  `git` text COLLATE utf8_turkish_ci NOT NULL,
  `oda` text COLLATE utf8_turkish_ci NOT NULL,
  `kisi` text COLLATE utf8_turkish_ci NOT NULL,
  `cocuk` text COLLATE utf8_turkish_ci NOT NULL,
  `yatak` text COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=93 ;

--
-- Tablo döküm verisi `rez`
--

INSERT INTO `rez` (`id`, `isim`, `email`, `mesaj`, `telefon`, `seo`, `resim`, `fiyat`, `adi`, `gel`, `git`, `oda`, `kisi`, `cocuk`, `yatak`, `tarih`, `ip`) VALUES
(90, 'Ahmet CAN', 'demo@example.com', 'ddd', '05444444444', 'Kral-Dairesi-', 'cS_53.jpg', '1355', 'Kral Dairesi', '2016-7-7', '2016-8-6', '3', '3', '3', '2', '21 Temmuz 2016, 23:40', '::1'),
(92, 'osman bey', 'serkan@bey.com', 'cccc', '05444444444', 'Double-Oda', 'image_4.jpg', '222', 'Double Oda', '07/06/2016', '07/13/2016', '5', '1', '1', '3', '22 Temmuz 2016, 19:36', '::1'),
(91, 'osman bey', 'demo@example.com', 'notum yoktur.', '0222222222', 'Kral-Dairesi-', 'cS_53.jpg', '1355', 'Kral Dairesi', '2016-7-4', '2016-8-18', '2', '4', '2', '2', '22 Temmuz 2016, 00:26', '::1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `satis`
--

CREATE TABLE IF NOT EXISTS `satis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  `yetkili` text COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `web` text COLLATE utf8_turkish_ci NOT NULL,
  `il` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ilce` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adres` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE IF NOT EXISTS `sayfalar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  `ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `ingaciklama` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=31 ;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `adi`, `aciklama`, `resim`, `seo`, `durum`, `ingadi`, `ingaciklama`) VALUES
(1, 'Hakkımızda', '<p><span style="font-family:open sans condensed,sans-serif; font-size:14px">Sevgi ve umutla &ccedil;ıktığımız yolda, &ouml;zel gereksinimli &ccedil;ocuklarımız i&ccedil;in yapmayı ama&ccedil;ladığımız temel şey, sosyal yaşam i&ccedil;erisinde kendilerine yeterli bireyler olarak akranlarıyla kaynaşmalarını ve onlara en uygun eğitim programından faydalanmalarını sağlamaktır.&nbsp;</span></p>\r\n', 'ozelegitim.jpg', 'Hakkimizda', 1, '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE IF NOT EXISTS `siparis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `urunseo` text COLLATE utf8_turkish_ci NOT NULL,
  `urunresim` text COLLATE utf8_turkish_ci NOT NULL,
  `urunadi` text COLLATE utf8_turkish_ci NOT NULL,
  `adet` text COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` text COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=4 ;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`id`, `isim`, `email`, `telefon`, `urunseo`, `urunresim`, `urunadi`, `adet`, `fiyat`, `tarih`, `ip`) VALUES
(3, 'Ahmet CAN', '', '05444444444', 'Deneme-Urun', '17.jpg', 'Deneme &Uuml;r&uuml;n / ABC123', '1', '40 TL', '12 Temmuz 2016, 16:14', '::1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `site_ayar`
--

CREATE TABLE IF NOT EXISTS `site_ayar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_title` text COLLATE utf8_turkish_ci NOT NULL,
  `site_meta` text COLLATE utf8_turkish_ci NOT NULL,
  `site_desc` text COLLATE utf8_turkish_ci NOT NULL,
  `firma_logo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `firma_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `firma_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `firma_fax` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `firma_email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `firma_adres` text COLLATE utf8_turkish_ci NOT NULL,
  `google_maps` text COLLATE utf8_turkish_ci NOT NULL,
  `google_analytics` text COLLATE utf8_turkish_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `gplus` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `copyright` text COLLATE utf8_turkish_ci NOT NULL,
  `ingcopyright` text COLLATE utf8_turkish_ci NOT NULL,
  `site_ingtitle` text COLLATE utf8_turkish_ci NOT NULL,
  `firma_ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `skype` longtext COLLATE utf8_turkish_ci,
  `youtube` longtext COLLATE utf8_turkish_ci,
  `tanitim` longtext COLLATE utf8_turkish_ci,
  `tema` longtext COLLATE utf8_turkish_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `site_ayar`
--

INSERT INTO `site_ayar` (`id`, `site_title`, `site_meta`, `site_desc`, `firma_logo`, `firma_adi`, `firma_tel`, `firma_fax`, `firma_email`, `firma_adres`, `google_maps`, `google_analytics`, `facebook`, `twitter`, `gplus`, `instagram`, `pinterest`, `copyright`, `ingcopyright`, `site_ingtitle`, `firma_ingadi`, `skype`, `youtube`, `tanitim`, `tema`) VALUES
(1, 'Eğitimci Özel Eğitim', 'Eğitimci Özel Eğitim', 'Eğitimci Özel Eğitim', 'logo_9.png', 'Eğitimci Özel Eğitim ve Rehabilitasyon Merkezi', '(0555) 762 16 01', '', 'info@egitimciozelegitim.com', 'Bağlaraltı Mahallesi Kaplangazi Caddesi No:63&nbsp; Yıldırım/BURSA', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3048.3168895277718!2d29.137826615098746!3d40.179760679393326!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14ca394ca44f42d7%3A0x8b36d030a5757fa5!2sE%C4%9Fitimci+%C3%96zel+E%C4%9Fitim+Rehabilitasyon+Merkezi!5e0!3m2!1str!2str!4v1540032327297', '', 'https://www.facebook.com/', 'https://twitter.com/?lang=tr', '', 'https://www.instagram.com/', '', 'Copyright 2015 © Egitimci Özel Eğitim ve Rehabilitasyon Merkezi', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `adi2` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  `tarih` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ingadi2` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ingadi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`id`, `adi`, `adi2`, `resim`, `durum`, `tarih`, `ingadi2`, `ingadi`) VALUES
(69, 'Sevimli Çevre', '', 'home_banner_two.png', 1, '23-10-2018', '', '<p>Sevimli &Ccedil;evre</p>\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE IF NOT EXISTS `urunler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` int(11) NOT NULL,
  `adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ingaciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `kod` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `begen` int(11) NOT NULL,
  `efiyat` longtext COLLATE utf8_turkish_ci,
  `ukod` longtext COLLATE utf8_turkish_ci,
  `video` longtext COLLATE utf8_turkish_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=27 ;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `kategori`, `adi`, `seo`, `resim`, `durum`, `aciklama`, `tarih`, `ingaciklama`, `ingadi`, `kod`, `begen`, `efiyat`, `ukod`, `video`) VALUES
(26, 40, 'Deneme Proje 2', 'Deneme-Proje-2', '3.jpg', 1, '<p>dddd</p>\r\n', '13-07-2016', '', 'http://www.google.com', '', 0, 'B Firma A. Ş.', '22 Temmuz 2017', 'web,php'),
(25, 39, 'Deneme Proje', 'Deneme-Proje', '8_dirk_sebregts.jpg', 1, '<p>proje acıklaması</p>\r\n', '15-07-2016', '', 'http://www.google.com', '', 0, 'A Firma A.Ş.', '13 Temmuz 2017', 'Php // Css3');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_kategori`
--

CREATE TABLE IF NOT EXISTS `urun_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  `kategori_ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `kod` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=49 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetici`
--

CREATE TABLE IF NOT EXISTS `yonetici` (
  `yonetici_id` int(11) NOT NULL AUTO_INCREMENT,
  `yonetici_ad_soyad` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yonetici_kullanici` char(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yonetici_sifre` char(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yonetici_email` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yonetici_son_giris` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`yonetici_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `yonetici`
--

INSERT INTO `yonetici` (`yonetici_id`, `yonetici_ad_soyad`, `yonetici_kullanici`, `yonetici_sifre`, `yonetici_email`, `yonetici_son_giris`) VALUES
(1, 'Y&ouml;netim Paneli', 'admin', 'egitimci1616', 'info@siteniz.com', '05 Ekim 2015, 19:13');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
