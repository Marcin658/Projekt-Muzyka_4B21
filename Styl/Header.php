<!DOCTYPE html>
<html lang="pl">
<head>
    <style type="text/css">
        body
        {
            display: flex;
        }
        header
        {
            display: flex;
            background-color: #10316B;
            color: #DEE1EC;
            width: 100%;
            height: 10%;
            font-family: OCR A Std, monospace;
            font-size: 18px;
        }
        #Nazwa
        {
            display: flex;
            color: #DEE1EC;
            gap: 15px;
            align-items: center; 
        }
        a:visited 
        {
            color: #0B8457;
        }
        :link 
        {
            color: #EAC100;
        }
        a 
        {
            text-decoration: none;
            align-items: center; 
            justify-content: flex-end;
        }
        a:hover
        {
            color: lightseagreen;
            text-shadow:0 0 6px #DEE1EC;
        }
        #pasek
        {
            display: flex;
            list-style: none;
            gap: 15px;
            justify-content: flex-end;
        }

    </style>

</head>
<body>
<header>
        <img src="../Grafika/logo.png" alt="Logo">

        <h1 id="Nazwa">Muzyka wśród nas</h1>
        <nav>
            <ul id="pasek">
                <li><a href="index.php">Strona Główna</a></li>
                <li><a href="Login.php">Login</a></li>
                <li><a href="wsparcie.php">Wsparcie</a></li>
            </ul>
        </nav>
    </header> 
</body>
</html>