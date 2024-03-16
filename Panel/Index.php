<?php
require_once '../Baza Danych/db.php';

?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Styl/styl_panel.css">
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
<aside>
    <div class="lew">

    </div>
    <div class="praw">

    </div>  
</aside>
<?php
    require_once '../Styl/footer.php';
?>
</body>
</html>