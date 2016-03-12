<%-- 
    Document   : profiloUtente
    Created on : 8-mar-2016, 9.44.06
    Author     : FSEVERI\scagnellato3082
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./resources/css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>Home Page</title>
    </head>

    <body>
        <div class="container">
            <div class="row">
                <nav>
                    <div class="nav-wrapper blue">
                        <a href="#" class="brand-logo">Home</a>
                        <ul id="nav-mobile" class="right hide-on-med-and-down">
                            <li><a href="./login">Login</a></li>
                            <li><a href="#">Sign Up</a></li>
                            <li><a href="profilo/">Profilo (tmp)</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
            
            
            
            <button class="btn center-align">Aggiungi Evento</button>
            
            
            
        </div>
        <div class="parallax-container">
            <div class="parallax"><img src="https://www.techzilla.it/wp-content/uploads/2015/05/Sfondi-TZ-Sky-2.png"></div>
        </div>

    </p>
</div>

</div>

<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
<script>
    $(document).ready(function () {
        $('.collapsible').collapsible({
            accordion: false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
        });
        $('.parallax').parallax();
    });
</script>
</body>
</html>
