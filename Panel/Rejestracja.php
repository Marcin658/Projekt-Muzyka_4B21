<?php
session_start();

if(isset($_SESSION['admin_name'])){
    header('Location: ./');
    die();
}

if(isset($_POST['login'], $_POST['username'], $_POST['pass'])){
    include '../Baza Danych/db.php';

    $username = $_POST['username'];
    $pass = $_POST['pass'];


    $hashed_pass = password_hash($pass, PASSWORD_DEFAULT);


    $registration_date = date("Y-m-d");


    $sql = "INSERT INTO użytkownicy (Nazwa_Uzytkownika, Haslo, Data_Rejestracji) VALUES ('$username', '$hashed_pass', '$registration_date')";



    mysqli_close($conn);
}

$title='Panel | Rejestracja:';
?>
<!DOCTYPE html>
<html lang="pl">
<link rel="stylesheet" href="../Styl/login.css">
<head>
    <title>MWN | Rejestracja</title>
</head>
<body>
<?php
require_once '../Dodatki/Header.php';
?>
<div class="karta">
    <div class="card-header">
        <h1>Zarejestruj się na stronie</h1>
        <!--<?= hash('sha256', 'admin') ?>-->
    </div>
    <div class="card-body">
        <form method="post">
            <div class="mb-3">
                <label for="username" class="form-label">Login</label>
                <input type="text" class="form-control" id="username" name="username" required autocomplete="off">
            </div>
            <div class="mb-3">
                <label for="pass" class="form-label">Hasło</label>
                <input type="password" class="form-control" id="pass" name="pass" required autocomplete="off">
            </div>
            <button type="submit" class="btn btn-primary" name="login">Utwórz konto</button>
        </form>
    </div>
</div>
    <footer>
        <?php
            require_once '../Dodatki/footer.php';
        ?>
    </footer>
</body>
</html>