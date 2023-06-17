<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Serpientes y escaleras</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        .btn.btn-primary{
            background-color: #186A3B;
            border: 1px solid #82E0AA;
        }
        .casilla{
            height: 80px;
            font-weight: bold;
        }
        .casilla:hover{
            color: whitesmoke;
        }
        .escalera{
            background-image: url('Escalera.png');
            background-size: cover;
        }
        .serpiente{
            background-image: url('Serpiente.png');
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
        }
        .ficha{
            background-image: url('ficha.png');
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Practica 7</h1>
        <form action="practica7.php" method="POST">
            <div class="row">
                <center>
                    <input type="submit" value="Jugar" class="btn btn-primary"> 
                </center>
                    <?php
                        $colores = ["#EAFAF1","#82E0AA","#186A3B","#F5FAF7"];
                        if(isset($_POST["casilla"])){
                            $i = 0;
                            $dado = rand(1,12);
                            echo "<h2>Resultado del dado =".$dado."</h2>";
                            $casilla = $dado + intval($_POST["casilla"]);
                            echo "<h1>El jugador estaba en la casilla ".intval($_POST["casilla"])."y paso a la casilla".$casilla.".</h1>";
                            
                            if($casilla >= 100){
                                echo "</h1>el jugador gano</h1>";
                                $casilla = 100;
                            }
                            //$i == 4 || $i == 9 || $i == 33 || $i == 28 || $i == 40 || $i == 80 ||$i == 71 ||$i == 77
                            if($casilla == 4){
                                $casilla = 15;
                                echo "<h3>El jugador cayo en una <img src='escalera.png' width='50px'> y subio a la casilla 15</h3>";
                            }
                            if($casilla == 17){
                                $casilla = 5;
                                echo "<h3>El jugador cayo en una <img src='serpiente.png' width='50px'> y bajo a la casilla 5</h3>";
                            }
                            
                        }else{
                            $casilla = 0;
                        }
                        for($i=100; $i>0; $i--){
                            if($casilla == $i){
                                echo "<div class='col-1 card m-1 casilla ficha' style='background-color:'".$colores[rand(0,3)].";'>".$i."</div>";
                            } else if($i == 4 || $i == 9 || $i == 33 || $i == 28 || $i == 40 || $i == 80 ||$i == 71 ||$i == 77){
                                echo "<div class='col-1 card m-1 casilla escalera' style='background-color:".$colores[rand(0,3)].";'>".$i."</div>";
                            } else if($i == 17 || $i == 54 || $i == 58 || $i == 64 || $i == 87 || $i == 93 ||$i == 95 ||$i == 99 ||$i == 36){
                                echo "<div class='col-1 card m-1 casilla serpiente' style='background-color:".$colores[rand(0,3)].";'>".$i."</div>";
                            } else {
                                echo "<div class='col-1 card m-1 casilla' style='background-color:".$colores[rand(0,3)].";'>".$i."</div>";
                            }
                        }
                    ?>
            </div>
            <input type="hidden" name="casilla" value="<?php echo $casilla; ?>">
        </form>
    </div>
</body>
</html>