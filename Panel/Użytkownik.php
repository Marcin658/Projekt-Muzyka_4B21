<?php
    require_once '../Baza Danych/db.php';
    require_once '../Dodatki/cookie.php';
session_start();

if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
    $uzytkownik = $_SESSION['username'];
    require_once '../Dodatki/Login_Header.php';
} else {
    require_once '../Dodatki/Header.php';
}


?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MWN | <?php echo $uzytkownik; ?></title>
    <style>
        .heart {
            color: white;
            transition: color 0.3s ease;
            cursor: pointer;
        }
        .heart.active {
            color: red;
        }
    </style>
</head>
<body>
    <main>
        <head_section>
            <a href="Utwory.php">Utwory</a>
            <a href="Albumy.php">Albumy</a>
            <a href="Wykonawcy.php">Wykonawcy</a>
        </head_section>
        <section>
            <?php
                $db = mysqli_connect('127.0.0.1','root','','muzyka');
                $zap="SELECT utwory.Id_Utworu, utwory.Tytul AS 'Nazwa utworu', album.Tytul AS 'Nazwa albumu'
                    FROM ulubione_utwory
                    JOIN utwory ON ulubione_utwory.Id_Utworu = utwory.Id_Utworu
                    JOIN album ON utwory.Id_Albumu = album.Id_Albumu";
                $result = $db->query($zap);
                if ($result->num_rows > 0) 
                {
                    echo "<table><tr><th>Nazwa utworu</th><th>Nazwa albumu</th></tr>";
                    while($row = $result->fetch_assoc()) 
                    {
                        echo "<tr><td>".$row["Nazwa utworu"]."</td><td>".$row["Nazwa albumu"]."</td></tr>";
                    }
                }
            ?>
        </section>
    </main>
    <?php
        include_once '../Dodatki/footer.php'
    ?>
    <script>
        function toggleFavorite(id) {
            var heartIcon = document.getElementById('heart_' + id);
            heartIcon.classList.toggle('active');
            
        }
    </script>
</body>
</html>