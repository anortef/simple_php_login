<?php

$userName = $_POST["username"];
$pass = $_POST["password"];

$myfile = fopen("comprueba", "r") or die("Unable to open file!");

$content = fread($myfile, filesize("comprueba"));

$parsedcontents = explode(":", $content);

$fileUserName =  $parsedcontents[0];
$filePassword = $parsedcontents[1];

if($userName == $fileUserName AND $pass == $filePassword){
    echo "login successful";
} else {
    echo "incorrect username or password";
}
