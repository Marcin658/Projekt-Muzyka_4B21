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
                <div class="con2">
                    <?php

                        mysqli_set_charset ( $conn , "utf8" );    
                        $conn = mysqli_connect("127.0.0.1", "root", "", "muzyka");

                        if (!$conn) {
                            die("Connection failed: " . mysqli_connect_error());
                        }
                        
                        $sql = "SELECT Id_Utworu, Tytul, Link FROM utwory";
                        $result = mysqli_query($conn, $sql);
                        
                        if (mysqli_num_rows($result) > 0) {
                            while ($row = mysqli_fetch_assoc($result)) {
                                echo "<div class ='link'><a href='" . $row['Link'] . "'>". $row['Id_Utworu'] . ". ". $row['Tytul'] . "</a></div><br>";
                            }
                        } else {
                            echo "Brak danych w bazie danych.";
                        }
                        
                        mysqli_close($conn);

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