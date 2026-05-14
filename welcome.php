<?php
$user = $_GET['user'];
?>

<!DOCTYPE html>
<html lang="tr">
<head>
<meta charset="UTF-8">
<title>Hoşgeldiniz</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: #ffffff;
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}
.card {
    background: #ffffff;
    padding: 40px;
    border-radius: 20px;
    text-align: center;
}
</style>

</head>

<body>

<div class="card">
    <h1>Hoşgeldiniz</h1>
    <h2><?php echo $user; ?></h2>

    <a href="index.html" class="btn btn-danger mt-3">Ana Sayfa</a>
</div>

</body>
</html>