<?php
$email = $_POST['email'];
$password = $_POST['password'];

if($email == "b251210019@sakarya.edu.tr" && $password == "123456"){
    header("refresh:3;url=index.html");
    echo "
    <h1 style='text-align:center; margin-top:100px; color:green;'>
    Hoşgeldiniz $email
    </h1>
    <p style='text-align:center;'>3 saniye içinde ana sayfaya yönlendiriliyorsunuz...</p>
    ";
}
else{
    echo "
    <h1 style='text-align:center; margin-top:100px; color:red;'>
    Hatalı giriş!
    </h1>
    <a href='login.html'>Tekrar Dene</a>
    ";
}
?>