<?php
    require_once '../Baza Danych/db.php';
    require_once '../Dodatki/cookie.php';

    $conn->set_charset("utf8");
    
session_start();

if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
    $uzytkownik = $_SESSION['username'];
    require_once '../Dodatki/admin_Header.php';
}

?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ustawienia Admina</title>
</head>
<body>
    
</body>
</html>