<?php
    $nombre = $_POST("nombre");
    $calificacion = 0;

    $pregunta1 = $_POST("pregunta1");
    $pregunta2 = $_POST("pregunta2");
    $pregunta3 = $_POST("pregunta3");
    $pregunta4 = $_POST("pregunta4");
    $pregunta5 = $_POST("pregunta5");
    $pregunta6 = $_POST("pregunta6");
    $pregunta7 = $_POST("pregunta7");
    $pregunta8 = $_POST("pregunta8");
    $pregunta9 = $_POST("pregunta9");

    echo "<h3>Pregunta 1: ".pregunta1."</h3>";
    if($pregunta1 == "b"){
        $calificacion = $calificacion + 1.11;
        echo "Esta correcto papu <img src='bien.png' width='3%'><hr>";
    }else{
        echo "Esta mal papu <img src='mal.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 2: ".pregunta2."</h3>";
    if($pregunta2 == "a"){
        $calificacion = $calificacion + 1.11;
        echo "Esta correcto papu <img src='bien.png' width='3%'><hr>";
    }else{
        echo "Esta mal papu <img src='mal.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 3: ".pregunta3."</h3>";
    if($pregunta3 == "b"){
        $calificacion = $calificacion + 1.11;
        echo "Esta correcto papu <img src='bien.png' width='3%'><hr>";
    }else{
        echo "Esta mal papu, la correcta era la b <img src='mal.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 4: ".pregunta4."</h3>";
    if($pregunta4 == "c"){
        $calificacion = $calificacion + 1.11;
        echo "Esta correcto papu <img src='bien.png' width='3%'><hr>";
    }else{
        echo "Esta mal papu, la correcta era la c<img src='mal.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 5: ".pregunta5."</h3>";
    if($pregunta5 == "b"){
        $calificacion = $calificacion + 1.11;
        echo "Esta correcto papu <img src='bien.png' width='3%'><hr>";
    }else{
        echo "Esta mal papu, la correcta era la b <img src='mal.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 6: ".pregunta6."</h3>";
    if($pregunta6 == "a"){
        $calificacion = $calificacion + 1.11;
        echo "Esta correcto papu <img src='bien.png' width='3%'><hr>";
    }else{
        echo "Esta mal papu,la correcta era la a <img src='mal.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 7: ".pregunta7."</h3>";
    if($pregunta7 == "c"){
        $calificacion = $calificacion + 1.11;
        echo "Esta correcto papu <img src='bien.png' width='3%'><hr>";
    }else{
        echo "Esta mal papu,la correcta era la c <img src='mal.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 8: ".pregunta8."</h3>";
    if($pregunta8 == "b"){
        $calificacion = $calificacion + 1.11;
        echo "Esta correcto papu <img src='bien.png' width='3%'><hr>";
    }else{
        echo "Esta mal papu, la correcta era la b<img src='mal.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 9: ".pregunta9."</h3>";
    if($pregunta9 == "a"){
        $calificacion = $calificacion + 1.12;
        echo "Esta correcto papu <img src='bien.png' width='3%'><hr>";
    }else{
        echo "Esta mal papu,la correcta era la a <img src='mal.png' width='3%'><hr>";
    }

    if($calificacion >= 0 && $calificacion <=5){
        echo "<h3>Calificacion:".$calificacion.",No aprobado (ponte a estdiar webon)</h3>";
    }else{
        echo "<h3>Calificacion:".$calificacion.",Aprobado, epicardo</h3>";
    }
?>