<?php

$email = $_POST['email'];
$password = $_POST['password'];

// mailden öğrenci no çek
$studentNo = explode("@", $email)[0];

// kontrol
if ($email == $studentNo . "@sakarya.edu.tr" && $password == $studentNo) {

    header("Location: welcome.php?user=" . $studentNo);
    exit();

} else {

    echo "<script>
        alert('Hatalı giriş!');
        window.location.href='login.html';
    </script>";

}

?>