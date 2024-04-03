<?php
require_once '../Baza Danych/db.php';

?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Styl/panel.css">
    <title>MWN | Muzyka</title>
</head>
<body>
<?php
    require_once '../Dodatki/Header.php';
?>
<main>
    <head_section>
        <a href="Utwory.php">Utwory</a>
        <a href="Albumy.php">Albumy</a>
        <a href="Wykonawcy.php">Wykonawcy</a>
    </head_section>
    <section>
        <div class="con4">
            <?php
                $zap2 = "SELECT * From wykonawcy";
                
                $db = mysqli_connect('127.0.0.1','root','','muzyka');
                $wyn2 = mysqli_query($db, $zap2);
                while($wier2 = mysqli_fetch_row($wyn2)){
                echo "<div class='link'><li> $wier2[0].  $wier2[1] $wier2[2] </li></div>";}
                mysqli_set_charset ( $db , "utf8" );
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