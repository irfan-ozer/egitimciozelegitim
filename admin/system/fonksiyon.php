<?php 

{ 
    
} 

{ 
    
} 


{ 

} 

{ 
function p($par, $st = false)
{
    if( $st )
    {
        return mysql_real_escape_string(htmlspecialchars(addslashes(trim(htmlentities($_POST[$par])))));
    }

    return mysql_real_escape_string(addslashes(trim(htmlentities($_POST[$par]))));
}

function g($par)
{
    return strip_tags(trim(addslashes(htmlentities($_GET[$par]))));
}

function kisalt($par, $uzunluk = 50)
{
    if( $uzunluk < strlen($par) )
    {
        $par = mb_substr($par, 0, $uzunluk, "UTF-8") . "[...]";
    }

    return $par;
}

function session_olustur($par)
{
    foreach( $par as $anahtar => $deger )
    {
        $_SESSION[$anahtar] = $deger;
    }
}

function seo($tr1)
{
    $turkce = array( "ş", "Ş", "ı", "ü", "Ü", "ö", "Ö", "ç", "Ç", "ş", "Ş", "ı", "ğ", "Ğ", "İ", "ö", "Ö", "Ç", "ç", "ü", "Ü" );
    $duzgun = array( "s", "S", "i", "u", "U", "o", "O", "c", "C", "s", "S", "i", "g", "G", "I", "o", "O", "C", "c", "u", "U" );
    $tr1 = str_replace($turkce, $duzgun, $tr1);
    $tr1 = preg_replace("@[^a-z0-9\\-_şıüğçİŞĞÜÇ]+@i", "-", $tr1);
    return $tr1;
}

function kategoriler()
{
    $kategoriSorgu = mysql_query("SELECT * FROM urun_kategori WHERE durum = 1 ORDER BY id ASC");
    while( $kategoriSonuc = mysql_fetch_object($kategoriSorgu) )
    {
        echo "\t\t\t <li ";
        if( $kategoriSonuc->id = $kat )
        {
            echo "class=\"active\"";
        }

        echo ">\r\n\t\t\t\t<a href=\"kategori-";
        echo $kategoriSonuc->seo;
        echo "\">";
        echo $kategoriSonuc->kategori_adi;
        echo "</a>\r\n\t\t\t </li>\r\n        ";
    }
}

function sayfalar()
{
    $SayfaSorgu = mysql_query("SELECT * FROM sayfalar WHERE durum = 1 ORDER BY id ASC");
    while( $SayfaSonuc = mysql_fetch_object($SayfaSorgu) )
    {
        echo "<li>\r\n\t\t\t\t<a href=\"sayfalar-" . $SayfaSonuc->seo . "\">" . $SayfaSonuc->adi . "</a>\r\n\t\t\t </li>";
    }
}

function haberler()
{
    $HaberSorgu = mysql_query("SELECT * FROM haberler WHERE durum = 1 ORDER BY id ASC");
    while( $HaberSonuc = mysql_fetch_object($HaberSorgu) )
    {
        echo "<li>\r\n\t\t\t\t<a href=\"haber-detay-" . $HaberSonuc->seo . "\">" . kisalt($HaberSonuc->adi, 30) . "</a>\r\n\t\t\t </li>";
    }
}

function Sorgu($sorgu)
{
    return mysql_query($sorgu);
}

function Sonuc($sonuc)
{
    return mysql_fetch_object($sonuc);
}

function say($say)
{
    return mysql_num_rows($say);
}

function kod($uzunluk = 8, $buyuk_harf = 1, $kucuk_harf = 1, $sayi_kullan = 1, $ozel_karakter = "")
{
    $buyukler = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    $kucukler = "abcdefghijklmnopqrstuvwxyz";
    $sayilar = "0123456789";
    if( $buyuk_harf )
    {
        $seed_length += 26;
        $seed .= $buyukler;
    }

    if( $kucuk_harf )
    {
        $seed_length += 26;
        $seed .= $kucukler;
    }

    if( $sayi_kullan )
    {
        $seed_length += 10;
        $seed .= $sayilar;
    }

    if( $ozel_karakter )
    {
        $seed_length += strlen($ozel_karakter);
        $seed .= $ozel_karakter;
    }

    for( $x = 1; $x <= $uzunluk; $x++ )
    {
        $sifre .= $seed[rand(0, $seed_length - 1)];
    }
    return $sifre;
}

function ip()
{
    if( getenv("HTTP_CLIENT_IP") )
    {
        $ip = getenv("HTTP_CLIENT_IP");
    }
    else
    {
        if( getenv("HTTP_X_FORWARDED_FOR") )
        {
            $ip = getenv("HTTP_X_FORWARDED_FOR");
            if( strstr($ip, ",") )
            {
                $tmp = explode(",", $ip);
                $ip = trim($tmp[0]);
            }

        }
        else
        {
            $ip = getenv("REMOTE_ADDR");
        }

    }

    return $ip;
}

function tarih($par)
{
    $explode = explode(" ", $par);
    $explode2 = explode("-", $explode[0]);
    $zaman = substr($explode[1], 0, 5);
    if( $explode2[1] == "01" )
    {
        $ay = "Ocak";
    }
    else
    {
        if( $explode2[1] == "02" )
        {
            $ay = "Şubat";
        }
        else
        {
            if( $explode2[1] == "03" )
            {
                $ay = "Mart";
            }
            else
            {
                if( $explode2[1] == "04" )
                {
                    $ay = "Nisan";
                }
                else
                {
                    if( $explode2[1] == "05" )
                    {
                        $ay = "Mayıs";
                    }
                    else
                    {
                        if( $explode2[1] == "06" )
                        {
                            $ay = "Haziran";
                        }
                        else
                        {
                            if( $explode2[1] == "07" )
                            {
                                $ay = "Temmuz";
                            }
                            else
                            {
                                if( $explode2[1] == "08" )
                                {
                                    $ay = "Ağustos";
                                }
                                else
                                {
                                    if( $explode2[1] == "09" )
                                    {
                                        $ay = "Eylül";
                                    }
                                    else
                                    {
                                        if( $explode2[1] == "10" )
                                        {
                                            $ay = "Ekim";
                                        }
                                        else
                                        {
                                            if( $explode2[1] == "11" )
                                            {
                                                $ay = "Kasım";
                                            }
                                            else
                                            {
                                                if( $explode2[1] == "12" )
                                                {
                                                    $ay = "Aralık";
                                                }

                                            }

                                        }

                                    }

                                }

                            }

                        }

                    }

                }

            }

        }

    }

    return $explode2[2] . " " . $ay . " " . $explode2[0] . ", " . $zaman;
}

function oturumkontrolana()
{
    $kullanici = $_SESSION["yonetici_kullanici"];
    $sifre = $_SESSION["yonetici_sifre"];
    $oturumkontrol = mysql_query("select * from yonetici where yonetici_kullanici ='" . $kullanici . "' and yonetici_sifre ='" . $sifre . "'");
    $durum = mysql_fetch_array($oturumkontrol);
    if( $durum )
    {
    }
    else
    {
        echo "<script language=\"javascript\">window.location=\"index.php\";</script>";
        exit();
    }

}

    $ayarlar = Sorgu("SELECT * FROM site_ayar WHERE id ='1'");
    $ayar = Sonuc($ayarlar);
}

?>
