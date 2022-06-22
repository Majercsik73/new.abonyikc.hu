<?php
    include("db_connect.php");

    $tabla = [];
    $sqlcmd = "SELECT * FROM lu12";
    $result = $db->query($sqlcmd);

    for($i = 0; $i < mysqli_num_rows($result); $i++)
    {
        $tabla[$i] = mysqli_fetch_assoc($result);
        //var_dump($tabla[$i]);
    }
    
    $adatok = [];
    $sqlcmd = "SELECT * FROM lu12cikk order by id desc";
    $result = $db->query($sqlcmd);

    for($i = 0; $i < mysqli_num_rows($result); $i++)
    {
        $adatok[$i] = mysqli_fetch_assoc($result);
    }
    
?>

<!DOCTYPE html>
<html lang="hu">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Abonyi KC - LU12</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <!--GoToTop button vezérlése-->
        <script src="goToTop.js"></script>
        <link rel="stylesheet" href="kezilabda.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div>
            <nav class="navbar">
                <div class="container-fluid">
                    <div><img src="Kepek/logo_8_Vágott.png" class="logo" alt="vb"></div>
                    <h1 class="akc">Abonyi Kc.</h1>
                    <a href="index.php" class="btn btn-lg">Kezdőoldal</a>
                    <a href="bemutatkozas.php" class="btn btn-lg">Bemutatkozás</a>
                    <!--  <a href="csapataink.html" class="btn btn-lg">Csapataink</a> -->
                    <a href="tao.php" class="btn btn-lg">TAO</a>
                    <a href="galeria.php" class="btn btn-lg">Galéria</a>
                    <a href="tamogatoink.php" class="btn btn-lg">Támogatóink</a>
                </div>
            </nav>
        </div>
        <div class="container">
            <header>
            <br />
            </header>
            <section>
                <!-- Slideshow container -->
            <div class="slideshow-container">

                <div class="mySlides fade">
                    <img src="Kepek/202102201_v.jpg" style="width:100%" alt="vb">
                </div>
                
                <div class="mySlides fade ">
                    <img src="Kepek/202102202_v.jpg" style="width:100%" alt="vb">
                </div>
                
                <div class="mySlides fade">
                    <img src="Kepek/202102203_v.jpg" style="width:100%" alt="vb">
                </div>

                <div class="mySlides fade">
                    <img src="Kepek/202102204_v.jpg" style="width:100%" alt="vb">
                </div>
            </div>
            <br>
          
            <h2>2021/2022 évad</h2>
            
            <table class="eredmenyek">
                <caption>
                    <h2>LU12 csapatunk mérkőzéseinek végeredményei</h2>
                </caption>
                <?php
                    foreach ($tabla as $t)
                    {
                        echo "<tr><td>".$t["datum"]."</td><td>".$t["csapatok"]."</td><td>".$t["eredmeny"]."</td></tr>";
                    }
                ?>
            </table>
            <br />
            <?php
                foreach ($adatok as $a)
                {
                    echo "<h2 id=".$a["id"].">".$a["cim"]."</h2>
                        <p>".$a["cikk"]."</p>
                        <p><strong>".$a["eredmeny"]."</strong></p>
                        <p>".$a["csapattagok"]."</p>";

                        
                        if ($a["kepek"] != "0"){
                            
                            if  ($a["kepek"] == "1"){
                                echo"
                                <div class='row'>
                                    <div class='col-md-3'></div>
                                    <div class='col-md-6'>
                                        <div class='thumbnail'>
                                            <a href='Kepek/u12".$a["id"]."1.jpg' target='blank'>
                                            <img src='Kepek/u12".$a["id"]."1.jpg' alt='Játék' style='width:100%'>
                                            <div class='caption'><p></p></div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class='col-md-3'></div>
                                 </div>";
                            }
                            else{
                                $j = $a["kepek"];
                                for ($i = 0; $i < $j-1; $i=$i+2)
                                {
                                    echo"
                                    <div class='row'>
                                        <div class='col-md-6'>
                                            <div class='thumbnail'>
                                                <a href='Kepek/u12".$a["id"].($i+1).".jpg' target='_blank'>
                                                <img src='Kepek/u12".$a["id"].($i+1).".jpg' alt='Játék' style='width:100%'>
                                                <div class='caption'><p></p></div>
                                                </a>
                                            </div>
                                        </div>
                                        <div class='col-md-6'>
                                            <div class='thumbnail'>
                                                <a href='Kepek/u12".$a["id"].($i+2).".jpg' target='blank'>
                                                <img src='Kepek/u12".$a["id"].($i+2).".jpg' alt='Játék' style='width:100%'>
                                                <div class='caption'><p></p></div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>";
                                }
                            }
                        }
                        echo "<p>".$a["datum"]."</p>";
                }
            ?>
        
            <br />
            </section>
            <footer>
                <p>
                    <span class="pull-left">AKC</span>
                    <span class="pull-right">2021</span>
                </p>
            </footer>
        </div>
        <button onclick="topFunction()" id="myBtn" title="Go to top" style='font-size:35px; width:60px;'>&#9651;</button>
        
        <!-- Képnézegető vezérlése  -->
        <script>
            var slideIndex = 0;
            showSlides();
                
            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";  
                }
                slideIndex++;
                if (slideIndex > slides.length) {slideIndex = 1}    
                slides[slideIndex-1].style.display = "block";  

                setTimeout(showSlides, 3000); // 3 mp-enként változik a kép
                }
        </script>
        <!-- GoToTop button vezérlése -->
        <script>
            var mybutton = document.getElementById("myBtn");

            // 500px-nél nagyobb görgetés esetén megjelenik a gomb
            window.onscroll = function() {scrollFunction()};

            function scrollFunction() {
                if (document.body.scrollTop > 500 || document.documentElement.scrollTop > 500) {
                mybutton.style.display = "block";
                } else {
                    mybutton.style.display = "none";
                }
            }

            // onclick függvény
            function topFunction() {
                document.body.scrollTop = 0; // Safari böngésző
                document.documentElement.scrollTop = 0; // Chrome, IE 8+ böngésző
            }
        </script>
        
    </body>
</html>