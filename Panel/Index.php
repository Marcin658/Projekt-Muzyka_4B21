<?php
    session_start();
    require_once '../Baza Danych/db.php';
    require_once '../Dodatki/cookie.php';

    mysqli_set_charset($conn, "utf8");

    if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
        $uzytkownik = $_SESSION['username'];
    
        if (isset($_SESSION['admin']) && $_SESSION['admin'] == 1) {
            require_once '../Dodatki/admin_Header.php';
        } else {
            require_once '../Dodatki/Login_Header.php';
        }
    } else {
        require_once '../Dodatki/Header.php';
    }
?>
<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../Styl/panel.css">
        <title>Muzyka Wśród Nas | <?php echo $uzytkownik; ?></title>
    </head>
    <body>
        <main>
            <head_section>
                <a href="Utwory.php">Utwory</a>
                <a href="Albumy.php">Albumy</a>
                <a href="Wykonawcy.php">Wykonawcy</a>
            </head_section>
            <section>
                <div class="con">
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. </br>
                    Ut error accusamus corrupti pariatur tempora quod aliquam? Perferendis tenetur molestiae, quaerat nobis unde, nesciunt qui rem quod delectus accusamus, cum voluptatum.</p>
                </div>
            </section>
        </main>
        <footer>
            <?php
                require_once '../Styl/footer.php';
            ?>
        </footer>
    </body>
</html>

