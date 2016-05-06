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
        <title>Profilo</title>
    </head>

    <body>

        <div class="row">
            <nav>
                <div class="nav-wrapper">
                    <a class="brand-logo">Profilo</a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Sign Up</a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="container">


        <button class="btn center-align">Aggiungi Evento</button>



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
