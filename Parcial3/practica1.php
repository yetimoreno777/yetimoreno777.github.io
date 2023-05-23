<?php
    echo "<h1>ola mundin</h1>";
    echo "<hr>";
    $nombre = "Chipos ";
    $edad = "16";
    if($edad > 18) {
        echo $nombre . "es mayor de edad";
    }else{
        echo $nombre . "es menor de edad <br><br>";
    }

    for($i=0; $i<10; $i++){
        echo $i . "<br>";
    }
?>