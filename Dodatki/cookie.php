<?php
    $cookie_name= "STG";
    $cookie_value = "LOG";
    if(!isset($_COOKIE[$cookie_name]))
    {
        setcookie(
        $cookie_name,
        DisplayStyle:: Table->value,
        setcookie($cookie_name, $cookie_value, time()+(86400*30),"/")
        );
        $cookie_value = DisplayStyle::Table->value;
    }
    else 
{
    $cookie_value=$_COOKIE[$cookie_name];
}
    ?>
