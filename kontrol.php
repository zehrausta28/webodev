<?php
session_start(); // Oturumu başlatıyoruz ki kullanıcıyı sistemde tutabilelim.

// Formdan gelen verileri alıyoruz
$username = $_POST['username'] ?? '';
$password = $_POST['password'] ?? '';

// Sistemde kayıtlı varsayılan bilgiler (İleride bunlar veritabanından gelecek)
$dogru_user = "B181210052@ogr.sakarya.edu.tr";
$dogru_pass = "fındık";

// 1. Boş alan kontrolü
if (empty($username) || empty($password)) {
    echo "Lütfen tüm alanları doldurun!";
    header("Refresh: 2; url=login.html");
    exit();
}

// 2. Bilgi doğruluğu kontrolü
if ($username === $dogru_user && $password === $dogru_pass) {
    // Giriş başarılı! Bilgileri oturuma kaydedelim.
    $_SESSION['login_durumu'] = true;
    $_SESSION['kullanici'] = $username;

    echo "<h2>Giriş Başarılı!</h2>";
    echo "Hoşgeldiniz, " . $username . "<br>Ana sayfaya yönlendiriliyorsunuz...";
    
    header("Refresh: 2; url=index.php");
} else {
    // Giriş başarısız
    echo "<h2>Hata!</h2>";
    echo "Kullanıcı adı veya şifre yanlış.";
    header("Refresh: 2; url=login.html");
}
?>