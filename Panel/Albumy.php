<?php
require_once '../Baza Danych/db.php';

?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Styl/styl_index.css">
    <title>Muzyka</title>
</head>
<body>
<?php
    require_once '../Styl/Header.php';
?>
<main>
    <head_section>
        <a href="Utwory.php">Utwory</a>
        <a href="Albumy.php">Albumy</a>
        <a href="Wykonawcy.php">Wykonawcy</a>
    </head_section>
    <section>
        <div class="con">
            <?php
                $zap3 = "SELECT * From wykonawcy";

                $db = mysqli_connect('127.0.0.1','root','','muzyka');
                $wyn3 = mysqli_query($db, $zap3);
                while($wier3 = mysqli_fetch_row($wyn3)){
                echo "<li> $wier3[0]  $wier3[1] </li>";}
        ?>
        </div>
    </section>
</main>
    
</body>
</html>