<?php
    require_once '../Dodatki/cookie.php';
session_start();
require_once '../Baza Danych/db.php';

mysqli_set_charset($conn, "utf8");

if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
    $uzytkownik = $_SESSION['username'];
    require_once '../Dodatki/Login_Header.php';
} else {
    require_once '../Dodatki/Header.php';
}


if (isset($_POST['favorite'])) {
    $userId = $_SESSION['user_id'];
    $utworId = $_POST['utwor_id'];

    $query = "INSERT INTO ulubione_utwory (Id_Uzytkownika, Id_Utworu) VALUES ('$userId', '$utworId')";
    $result = mysqli_query($conn, $query);
    if ($result) {
        echo "Utwór został dodany do ulubionych.";
    } else {
        echo "Wystąpił błąd podczas dodawania utworu do ulubionych: " . mysqli_error($conn);
    }
}
$sql = "SELECT Id_Utworu, Tytul, Link FROM utwory";
$result = mysqli_query($conn, $sql);

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
            <div class="con2">
                <?php
                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<div class='link'>";
                        echo "<a href='" . $row['Link'] . "'>" . $row['Id_Utworu'] . ". " . $row['Tytul'] . "</a>";
                        echo "<form method='post' action=''>";
                        echo "<input type='hidden' name='utwor_id' value='" . $row['Id_Utworu'] . "'>";
                        echo "<button type='submit' name='favorite'>Dodaj do ulubionych</button>";
                        echo "</form>";
                        echo "</div><br>";
                    }
                }
                ?>
            </div>
        </section>
    </main>
    <?php require_once '../Dodatki/footer.php'; ?>
</body>
</html>

