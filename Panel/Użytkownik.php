<?php
    require_once '../Baza Danych/db.php';
    require_once '../Dodatki/cookie.php';

    $conn->set_charset("utf8");
    
session_start();


if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) 
{
    $uzytkownik = $_SESSION['username'];
    var_dump($_SESSION['user_role']);
    if ($_SESSION['user_role'] == 'Admin') {
        require_once '../Dodatki/admin_Header.php';
    } else {
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
    <link rel="stylesheet" href="../Styl/Użytkownik.css">
    <title>MWN | <?php echo $uzytkownik; ?></title>
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
                $userId = $_SESSION['user_id'];
                $zap="SELECT utwory.Id_Utworu, utwory.Tytul AS 'Nazwa utworu', album.Tytul AS 'Nazwa albumu'
                    FROM ulubione_utwory
                    JOIN utwory ON ulubione_utwory.Id_Utworu = utwory.Id_Utworu
                    JOIN album ON utwory.Id_Albumu = album.Id_Albumu
                    WHERE ulubione_utwory.Id_Uzytkownika = '$userId'";
                $result = $conn->query($zap);
                if ($result->num_rows > 0) 
                {
                    echo "<table><tr><th>Nazwa utworu</th><th>Nazwa albumu</th></tr>";
                    while($row = $result->fetch_assoc()) 
                    {
                        echo "<tr><td>".$row["Nazwa utworu"]."</td><td>".$row["Nazwa albumu"]."</td>
                        <td><button onclick='removeFavorite(".$row['Id_Utworu'].")'>usuń z ulub.</button></td></tr>";
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
        var icon = document.getElementById('heart_' + id);
        icon.classList.toggle('active');
    }
</script>
<script>
    function removeFavorite(id) {
        window.location.href = "Utwory.php?id=" + id;
    }
</script>
</body>
</html>

