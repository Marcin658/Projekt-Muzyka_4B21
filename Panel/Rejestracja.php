<?php
session_start();
    require_once '../Baza Danych/db.php';
    require_once '../Dodatki/cookie.php';

if(isset($_POST['login'], $_POST['username'], $_POST['pass'])){
    include '../Baza Danych/db.php';

    $username = $_POST['username'];
    $pass = $_POST['pass'];

    $hashed_pass = password_hash($pass, PASSWORD_DEFAULT);
    $registration_date = date("Y-m-d");

    $sql = "INSERT INTO uzytkownicy (Nazwa_Uzytkownika, Haslo, Data_Rejestracji) VALUES ('$username', '$hashed_pass', '$registration_date')";

    if(mysqli_query($conn, $sql)) {
        echo "Użytkownik został pomyślnie dodany.";
    } else {
        echo "Błąd podczas dodawania użytkownika: " . mysqli_error($conn);
    }

    mysqli_close($conn);
}

?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>MWN | Rejestracja</title>
    <link rel="stylesheet" href="../Styl/login.css">
</head>
<body>
<?php
require_once '../Dodatki/Header.php';
?>
<div class="karta">
    <div class="card-header">
        <h1>Zarejestruj się na stronie</h1>
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
            <button type="submit" class="btn btn-primary" name="login"><a href="Login.php">Utwórz konto</a></button>
        </form>
    </div>
</div>
<footer>
    <?php
    require_once '../Styl/footer.php';
    ?>
</footer>
</body>
</html>