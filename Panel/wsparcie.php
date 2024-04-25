<?php
    require_once '../Baza Danych/db.php';
    require_once '../Dodatki/cookie.php';
    session_start();


    if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) 
    {
        $uzytkownik = $_SESSION['username'];
        if ($_SESSION['user_role'] == 1) {
            require_once '../Dodatki/admin_Header.php';
        } else {
            require_once '../Dodatki/Login_Header.php';
        }
    } 
    else 
    {
        require_once '../Dodatki/Header.php';
    }
?>
<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../Styl/panel.css">
        <title>MWN | Wsparcie | <?php echo $uzytkownik; ?></title>
    </head>
    <body>
        <div class="con3">
            <ul>
                <li><p>Projekt powstał z inicjatywy Marcina Szawerdy</p></li><br>
                <li><p>Zachęcam do wspierania przedstawionych twórców, oraz sprawdzenia ich kanałów na YouTube</p></li><br>
                <li><p>Proszę o dobrą ocenę Panie Profesorze</p></li>
            </ul>
        </div>
        <?php
            require_once '../Dodatki/footer.php';
        ?>
    </body>
</html>