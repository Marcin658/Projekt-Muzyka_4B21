<?php
session_start();
    require_once '../Dodatki/cookie.php';
    require_once '../Baza Danych/db.php';
    $conn->set_charset("utf8");


    if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) 
    {
        $uzytkownik = $_SESSION['username'];

        if (isset($_SESSION['Admin']) && $_SESSION['Admin'] == 1) 
        {
            require_once '../Dodatki/admin_Header.php';
        } 
        else 
        {
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
    <title>MWN | Muzyka | <?php echo $uzytkownik; ?></title>
</head>
<main>
    <div class = "head_section">
        <a href="Utwory.php">Utwory</a>
        <a href="Albumy.php">Albumy</a>
        <a href="Wykonawcy.php">Wykonawcy</a>
    </div>
    <section>
        <div class="con4">
            <?php
                $zap2 = "SELECT * From wykonawcy";
                $wyn2 = mysqli_query($conn, $zap2);
                while($wier2 = mysqli_fetch_row($wyn2)){
                echo "<div class='link'><li> $wier2[0].  $wier2[1] $wier2[2] </li></div>";}
            ?>
            <?php
                //require '../Dodatki/info.php';
            ?>
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

