<?php
    require_once '../Baza Danych/db.php';
    require_once '../Dodatki/cookie.php';
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../Styl/panel.css">
        <title>Muzyka Wśród Nas</title>
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
                <div class="con">
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. </br>
                    Ut error accusamus corrupti pariatur tempora quod aliquam? Perferendis tenetur molestiae, quaerat nobis unde, nesciunt qui rem quod delectus accusamus, cum voluptatum.</p>
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