<!DOCTYPE html>
<html lang="hu">
    <head>
        <!-- EZ EGY ISKOLAI FELADATHOZ KÉSZÍTETT WEBOLDAL!  FORRÁS: NEMZETISPORT,  NSO.HU-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Abonyi KC -Bemutatkozás</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
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
                    <a href="bemutatkozas.php" class="btn btn-lg" style="background-color: lightskyblue">Bemutatkozás</a>
                    <!-- <a href="csapataink.html" class="btn btn-lg">Csapataink</a> -->
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
          
            <h2>Bemutatkozás</h2>
            <br>
            <p>Az Abonyi Kézilabda Club 1988 óta működik női és férfi szakosztállyal.<br>Az elmúlt 30 év alatt szinte minden lépcsőfokot és osztályt megjárták csapataink. Igazolt játékosaink és versenyeztetett csapataink létszáma folyamatosan növekszik.
                <br>Egyesületünk utánpótlásképzésre egyre nagyobb hangsúlyt fektet és a helyi oktatási intézményekkel történő szoros együttműködés eredményeképp, bázisunk évről-évre bővül.
                <br>Edzői stábunk mindent elkövet azért, hogy megfelelő szakmai munkával, a gyerekek megszeressék és elsajátítsák ezt a szép, ám néha kemény játékot.
            </p>
            <br>
            <p>Székhelyünk az Abony szülöttjéről, Varga Istvánról elnevezett Városi Sportcsarnokunkban van. Itt zajlik edzéseink legnagyobb része, illetve itt játsszuk hazai mérkőzéseinket az abonyi publikum előtt.
                <br>Kellő támogatás, szponzoráció, közös gondolkodás és együttműködés nélkül a fejlődésünk korlátozott, de az Elnökség elszánt és alázatos munkával igyekszik gondoskodni a sportág további népszerűsítéséről, a jó színvonalú utánpótlás nevelő munkáról.</p>
            <br>
            <p>Egyesületünk vezetősége:</p>
            <ul>
                <li>Bárány József  elnök</li>
                <li>Mádi Csaba elnökhelyettes</li>
                <li>Bakosné Zana Nikoletta vezetőségi tag</li>
                <li>Kovács István vezetőségi tag</li>
                <li>Majercsik Zsolt vezetőségi tag</li>
            </ul>
        
            
            </section>
            <footer>
                <p>
                    <span class="pull-left">AKC</span>
                    <span class="pull-right">2021</span>
                </p>
            </footer>
        </div>
        <button onclick="topFunction()" id="myBtn" title="Go to top" style='font-size:50px;'>&#9651;</button>
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
                    
                setTimeout(showSlides, 3000); // Change image every 3 seconds
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