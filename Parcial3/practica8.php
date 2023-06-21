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
    <center><h1>Loteria</h1></center>
    <form action="practica8.php" method="POST">
        <center><input type="submit" value="Dar carta" name="carta" class="btn btn-primary"><br><br></center>
        <div class="row">
            <div class="col-sm-6">
                <center><h5>Carta #1</h5></center>
                <?php 
                    for($i=0; $i<16; $i++){
                        $numero = rand(1,54);
                        echo "<img src='fotos_loteria/". $numero.".jpeg' class='img-thumbnail'width='25%'>";
                    }
                ?>
            </div>

            <div class="col-sm-6">
            <center><h5>Carta #2</h5></center>
                <?php 
                    for($i=0; $i<16; $i++){
                        $numero = rand(1,54);
                        echo "<img src='fotos_loteria/". $numero.".jpeg' class='img-thumbnail'width='25%'>";
                    }
                ?>
            </div>

        </div>

    </form>
    </div>
</body>
</html>