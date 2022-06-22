<?php
    include("db_connect.php");
    $tabla = [];
    $sqlcmd = "SELECT * FROM fooldal order by id desc";
    $result = $db->query($sqlcmd);

    for($i = 0; $i < mysqli_num_rows($result); $i++)
    {
        $tabla[$i] = mysqli_fetch_assoc($result);
        //var_dump($tabla[$i]);
    }
    
?>



<!DOCTYPE html>
<html lang="hu">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Abonyi KC - Kezdőoldal</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="kezilabda.css">
    </head>
    <body>
        <div>
            <nav class="navbar">
                <div class="container-fluid">
                    <div><img src="Kepek/logo_8_Vágott.png" class="logo" alt="vb"></div>
                    <h1 class="akc">Abonyi Kc.</h1>
                    <a href="index.php" class="btn btn-lg" style="background-color: lightskyblue">Kezdőoldal</a>
                    <a href="bemutatkozas.php" class="btn btn-lg">Bemutatkozás</a>
                    <a href="tao.php" class="btn btn-lg">TAO</a>
                    <a href="galeria.php" class="btn btn-lg">Galéria</a>
                    <a href="tamogatoink.php" class="btn btn-lg">Támogatóink</a>
                </div>
            </nav>
        </div>
        <div class="container">
            <header>
            <br>
            </header>
            <section>
                <!-- Slideshow container -->
            <div class="slideshow-container">

                <div class="mySlides fade">
                    <img src="Kepek/202102201_v.jpg" style="width:100%" alt="U12">
                </div>
                
                <div class="mySlides fade">
                    <img src="Kepek/202102202_v.jpg" style="width:100%" alt="U12">
                </div>
                
                <div class="mySlides fade">
                    <img src="Kepek/202102203_v.jpg" style="width:100%" alt="U12">
                </div>

                <div class="mySlides fade">
                    <img src="Kepek/202102204_v.jpg" style="width:100%" alt="U12">
                </div>
            </div>
            <br>
          
            <h2>A 2021/2022 bajnoki idényben indított csapataink</h2>
            <div style="text-align: center;">
                <a href="u11.php" class="csapatnev">Leány U11</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="u12.php" class="csapatnev">Leány U12</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="u13.php" class="csapatnev">Leány U13</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="u14.php" class="csapatnev">Leány U14</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="uNoiIfi.php" class="csapatnev">Női Ifjúsági</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="fFelnott.php" class="csapatnev">Férfi Felnőtt</a>
            </div>
            <br />
            
            <?php
                foreach ($tabla as $t)
                {
                    echo "<h2 class='fooldalcim'>".$t["cim"]."</h2><p>".$t["datum"]."</p><p>".$t["leiras"].
                        "<br /><a class='lapteteje' href='".$t["csapathorog"]."'>Olvass tovább...</a></p>";
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
        <!-- Slideshow vezérlése -->
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
                    
                setTimeout(showSlides, 3000); // // Kép csere: 3mp
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