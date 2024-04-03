
<?php
/*
session_start();

if(isset($_SESSION['admin_name'])){
    header('Location: ./');
    die();
}

if(isset($_POST['login'], $_POST['username'], $_POST['pass'])){
    include '../Baza Danych/db.php';

    $username = $_POST['username'];
    $pass = $_POST['pass'];


}



$title='Panel | Logowanie:';

?>
<!DOCTYPE html>
<html lang="pl">
    <head>
        <title>Login</title>
    </head>
<?php
require_once '../Dodatki/Header.php';
?>
<div class="container-fluid p-0">
    <div class="container py-5">
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h1>Zaloguj się do strony</h1>
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
                            <button type="submit" class="btn btn-primary" name="login">
                                <a>Zaloguj się</a>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    <?php
        require_once '../Dodatki/footer.php';
    ?>
</footer>

*/
?>
<?php

session_start();

if(isset($_SESSION['admin_name'])){
    header('Location: ./Użytkownik');
    die();
}

if(isset($_POST['login'], $_POST['username'], $_POST['pass'])){
    include '../Baza Danych/db.php';

    $username = $_POST['username'];
    $pass = $_POST['pass'];

    // Sprawdź czy użytkownik istnieje w bazie danych
    $query = "SELECT * FROM uzytkownicy WHERE Nazwa_Uzytkownika = '$username'";
    $query1 = "SELECT * FROM uzytkownicy WHERE Haslo = '$pass'";
    $result = mysqli_query($conn, $query);
    $result1 = mysqli_query($conn, $query1);

    if($result && mysqli_num_rows($result) == 1) {
        $user_data = mysqli_fetch_assoc($result1);
        // Sprawdź czy hasło się zgadza
        if(password_verify($pass, $user_data['Haslo'])) {
            // Dane logowania są poprawne
            $_SESSION['admin_name'] = $username;
            header('Location: ./');
            die();
        } else {
            // Niepoprawne hasło
            echo "Niepoprawne hasło!";
        }
    } else {
        // Użytkownik nie istnieje
        echo "Użytkownik o podanej nazwie nie istnieje!";
    }
}

$title='Panel | Logowanie:';

?>
<!DOCTYPE html>
<html lang="pl">
<link rel="stylesheet" href="../Styl/login.css">
    <head>
        <title>MWN | Login</title>
    </head>
<?php
require_once '../Dodatki/Header.php';
?>
<div class="karta">
    <div class="card-header">
        <h1>Zaloguj się do strony</h1>
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
            <button type="submit" class="btn btn-primary" name="login">
                Zaloguj się
            </button>
        </form>
    </div>
</div>
<footer>
    <?php
        require_once '../Dodatki/footer.php';
    ?>
</footer>


