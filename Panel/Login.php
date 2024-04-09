<?php
    session_start();
    require_once '../Baza Danych/db.php';
    require_once '../Dodatki/cookie.php';
    if(isset($_POST['login'])) 
        {
            include '../Baza Danych/db.php';

            $username = mysqli_real_escape_string($conn, $_POST['username']);
            $password = mysqli_real_escape_string($conn, $_POST['pass']);

            $query = "SELECT Nazwa_Uzytkownika, Haslo FROM uzytkownicy WHERE Nazwa_Uzytkownika = '$username'";
            $result = mysqli_query($conn, $query);

            if($result) 
                {
                    $row = mysqli_fetch_assoc($result);
                    $hashed_password = $row['Haslo'];

                    if (password_verify($password, $hashed_password)) 
                        {
                            $_SESSION['user_id'] = $row['Id_Uzytkownika'];
                            $_SESSION['loggedin'] = true;
                            $_SESSION['username'] = $username;
                            header('Location: Użytkownik.php');
                            exit;
                        } 
                    else 
                        {
                            echo "Nieprawidłowe hasło!";
                        }
                } 
            else 
                {
                    echo "Błąd w zapytaniu do bazy danych: " . mysqli_error($conn);
                }

            mysqli_close($conn);
        }

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

