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

        </div>
    </section>
</main>
    <section>
        <div class="con">
            <?php
                $zap1 = "SELECT * From utwory";
                
                $db = mysqli_connect('127.0.0.1','root','','muzyka');
                $wyn = mysqli_query($db, $zap1);
                while($wier1 = mysqli_fetch_row($wyn)){
                echo "<li> $wier1[0]  $wier1[1] </li>";
                }
            ?>
        </div>
    </section>
</main>

    
</body>
</html>