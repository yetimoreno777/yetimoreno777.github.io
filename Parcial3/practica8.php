<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loteria</title>
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
    <div class="container">
        <center>  
            <h1>Loteria</h1>
            <form action="practica8.php" method="POST">
                <?php
                    if(isset($_POST["carta1"])){
                        $carta1 = $_POST("carta1");
                        $carta2 = $_POST("carta2");
                        $carta = rand(1,54);
                        $cartas_dadas = [];
                        array_push($cartas_dadas,$carta);
                    }else{
                        $carta1 = [];
                        $total = 0;
                        while($total < 16){
                            $numero = rand(1,54);
                            if(array_search($numero, $carta1) === false){
                                $carta1[$total] = $numero;
                                $total++;
                            }
                        }
                        $carta2 = [];
                        $total = 0;
                        while($total < 16){
                            $numero = rand(1,54);
                            if(array_search($numero, $carta2) === false){
                                $carta2[$total] = $numero;
                                $total++;
                            }
                        }
                    }
                ?>

                <input type="submit" value="Dar carta" name="carta" class="btn btn-primary">
                <div class="row">
                    <div class="col-sm-6">
                        <h5>Carta #1</h5>
                        <?php 
                            for($i=0; $i<16; $i++){
                                echo "<img src='fotos_loteria/". $carta1[$i].".jpeg' class='img-thumbnail'width='25%'>";
                                echo "<input type='hidden' name='carta1[]' value='".$carta1[$i]."'>";
                            }
                        ?>
                    </div>
                    <div class="col-sm-6">
                        <h5>Carta #2</h5>
                        <?php 
                            for($i=0; $i<16; $i++){
                                $numero = rand(1,54);
                                echo "<img src='fotos_loteria/". $carta2[$i].".jpeg' class='img-thumbnail'width='25%'>";
                                echo "<input type='hidden' name='carta2[]' value='".$carta2[$i]."'>";
                            }
                        ?>
                    </div>
                </div>
            </form>
        </center>
    </div>
</body>
</html>