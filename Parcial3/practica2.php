<?php
    $nombre = $_GET{"nombre"};
    echo "Nombre: " .$nombre ."<br><br>";

    $edad = $_GET{"edad"};
    echo "Edad: " .$edad ."<br><br>";
    
    $escuela = $_GET{"escuela"};
    echo "Escuela: " .$escuela ."<br><br>";
    
    $fecha_ingreso = $_GET{"fecha_ingreso"};
    echo "Fecha de ingreso: " .$fecha_ingreso ."<br><br>";
    
    $direccion = $_GET{"direccion"};
    echo "Direccion: " .$direccion ."<br><br>";

    if($edad >= 10){
        echo "<div style='color:green';>Es mayor de edad</div>" . "<br><br>";
    }else{
        echo "<div style='color:red';>Es menor de edad</div>" . "<br><br>";
    }
    
    if($escuela == "CBTis 224"){
        echo "<div style='background-color:black; color: white; width:5%;'>La peor escuela</div>" . "<br><br>";
    }else if($escuela == "COBAES"){
        echo "<div style='background-color:black; color: white; width:5%;'>La peor escuela</div>" . "<br><br>";
    }else if($escuela == "CETiS 107"){
        echo "<div style='width:5%;'>La mejor escuela</div>" . "<br><br>";
    }
?>