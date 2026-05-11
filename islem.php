<?php
// Form verilerini al
$email = $_POST['email'] ?? '';
$password = $_POST['password'] ?? '';

$email = trim((string)$email);
$password = trim((string)$password);

// Boş kontrol
if ($email === '' || $password === '') {
    header('Location: giriş.html?hata=bos');
    exit();
}

// Mail adresinden @ öncesini (Öğrenci No) alıyoruz
$ogrenciNo = strstr($email, '@', true);

// Öğrenci no geçerli mi?
if ($ogrenciNo === false || $ogrenciNo === '' || !preg_match('/^[a-zA-Z0-9]+$/', $ogrenciNo)) {
    header('Location: giriş.html?hata=mail');
    exit();
}

$expectedEmail = $ogrenciNo . '@sakarya.edu.tr';

// Doğrulama (mevcut mantığı koruyoruz)
if ($email === $expectedEmail && $password === $ogrenciNo) {
    // Başarılı: Ana sayfaya yönlendir
    header('Location: index.html');
    exit();
}

// Başarısız
header('Location: giriş.html?hata=yanlis');
exit();
?>
