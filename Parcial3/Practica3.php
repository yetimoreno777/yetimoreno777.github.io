<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Practica 3</title>
</head>
<body>
    <h1>PHP dentro de html</h1>
    <?php
        $alumno = "Pepe nador";
        $edad = 18;
        $escuela = "CETiS 107";
        $especialidad = "Construccion";
    ?>    

    <form action="">
        <label for="">Nombre del alumno:</label>
        <input type="text" value=<?php echo $alumno;?>> <br><br>

        <label for="">Edad:</label>
        <input type="number" value=<?php echo $edad;?>> <br><br>

        <input type="submit" value=<?php echo "'Incribirse a ".$especialidad,"'";?>> <br><br>
    </form>
    <h2>calificaciones</h2> <br>
    Calculo diferencial: <?php echo rand(5,10); ?> <br>
    Fisica: <?php echo rand(5,10); ?> <br>
    Ecologia: <?php echo rand(5,10); ?> <br>
    Ingles: <?php echo rand(5,10); ?> <br>
    Programacion: <?php echo rand(5,10); ?> <br>
    Promedio: <?php echo rand(5,10); ?> <br>
</body>
</html>