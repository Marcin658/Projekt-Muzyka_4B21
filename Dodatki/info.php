<!DOCTYPE html>
<html lang="pl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Wyświetlanie informacji PHP po najechaniu kursorem myszy</title>
<style>
#informacje {
    display: none;
    display: flex;
    width: 30mm;
    height: 10mm;
    background-color:white;
}
</style>
</head>
<body>

<div id="element" onklick="pokazInformacje()"></div>

<div id="informacje">
    <?php 
        $zap4 = 
            "SELECT długość,
            FROM utwory"; 
    
        $db = mysqli_connect('127.0.0.1','root','','muzyka');
        $wyn4 = mysqli_query($db, $zap4);
        while($wier4 = mysqli_fetch_row($wyn4))
        {
            echo "<li> $wier4[0] </li>";
        }
    ?>
</div>

<script>
function pokazInformacje() {
    var informacjeElement = document.getElementById("informacje");
}
</script>

</body>
</html>