<?php
    session_start();
    require_once '../Baza Danych/db.php';
    require_once '../Dodatki/cookie.php';

    $conn->set_charset("utf8");

    if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) 
        {
            $uzytkownik = $_SESSION['username'];
            require_once '../Dodatki/Login_Header.php';
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
        <title>MWN | Muzyka | <?php echo $uzytkownik; ?></title>
    </head>
    <body>
        <main>
            <head_section>
                <a href="Utwory.php">Utwory</a>
                <a href="Albumy.php">Albumy</a>
                <a href="Wykonawcy.php">Wykonawcy</a>
            </head_section>
            <section>
                <div class="con5">
                    <?php
                        $zap3 = "SELECT * From album";
                        $wyn3 = mysqli_query($conn, $zap3);
                        while($wier3 = mysqli_fetch_row($wyn3))
                        {
                            echo "<div class='link'><li> $wier3[0].  $wier3[1] </li></div>";
                        }
                    ?>
                    <?php
                        //require '../Dodatki/info.php';
                    ?>
                </div>
            </section>
        </main>
        <footer>
            <?php
                require_once '../Dodatki/footer.php';
            ?>
        </footer>
    </body>
</html>

