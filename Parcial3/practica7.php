<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Serpientes y escaleras</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        .col-1.card{
            height: 70px;
            width: 6.5%;
            text-align: center;
            border-radius: 3%;
            margin: 1.9px;
        }
    </style>
</head>
<body>
    <?php
        $colores = ["#EAFAF1","#82E0AA","#186A3B","#F5FAF7"];
    ?>
    <div class="container">
        <h1>Practica 7</h1>
        <form action="">
            <div class="row">
                <?php
                    for($i=100; $i>0; $i--){
                        echo "<div class='col-1 card' style='background-color:".$colores[rand(0,3)].";'>".$i."</div>";
                        /*if($i == 4){

                        }else if(){

                        }*/
                    }
                ?>
            </div>
        </form>
    </div>
</body>
</html>