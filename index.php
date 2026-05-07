<?php
session_start();

// Eğer giriş yapılmamışsa, kullanıcıyı login sayfasına geri postala
if (!isset($_SESSION['login_durumu']) || $_SESSION['login_durumu'] !== true) {
    header("Location: login.html");
    exit();
}
?>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>Ana Sayfa</title>
</head>
<body>
    <h1>Sadece Yetkili Kullanıcılar Görebilir</h1>
    <p>Hoş geldin, <?php echo $_SESSION['kullanici']; ?>!</p>
    <a href="cikis.php">Güvenli Çıkış Yap</a>
    <nav>
    <a href="index.php">Ana Sayfa</a>
    <a href="profil.php">Profilim</a>
    <a href="çıkış.php">Güvenli Çıkış</a>
</nav>
</body>
</html>