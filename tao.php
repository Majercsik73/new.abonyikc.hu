<!DOCTYPE html>
<html lang="hu">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Abonyi KC -TAO</title>
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
                    <a href="index.php" class="btn btn-lg">Kezdőoldal</a>
                    <a href="bemutatkozas.php" class="btn btn-lg">Bemutatkozás</a>
                    <a href="tao.php" class="btn btn-lg" style="background-color: lightskyblue">TAO</a>
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
                    <img src="Kepek/202102201_v.jpg" style="width:100%" alt="vb">
                </div>
                
                <div class="mySlides fade">
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
            <h2>TAO</h2>
            <br>
            <h3>2021/2022</h3>
            <ul id="tao1">
                <li><a href="SFP_2021_22.pdf" target="_blank" title="AbonyiKc_sfp_21/22">Pályázat</a></li>
                <li><a href="2021_2022_hatarozat.pdf" target="_blank" title="AbonyiKc_Tao_21/22">Határozat</a></li>
            </ul>
            <br>
            <h3>2020/2021</h3>
            <ul id="tao2">
                <li><a href="SFP_2020_21.pdf" target="_blank" title="AbonyiKc_sfp_20/21">Pályázat</a></li>
                <li><a href="2020_2021_hatarozat.pdf" target="_blank" title="AbonyiKc_Tao_20/21">Határozat</a></li>
            </ul>
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

                setTimeout(showSlides, 3000); //// Kép csere: 3mp
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