<%--
    Document   : Login
    Created on : 27-feb-2016, 10.27.35
    Author     : FSEVERI\ramescu2755
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./resources/css/style.css">
        <link rel="stylesheet" href="./resources/materialize/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>LOGIN</title>
    </head>
    <body>

        <nav>
            <div class="nav-wrapper">
                <a href="#" class="brand-logo">Login</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="./">Home</a></li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <form class="col s12">
                    <div class="row">
                        <div class="input-field col s6">
                            <i class="material-icons prefix">account_circle</i>
                            <input id="icon_prefix" type="text" class="validate">
                            <label for="icon_prefix">Nome Utente</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix">vpn_key</i>
                            <input id="icon_icon_prefix" type="password" class="validate">
                            <label for="icon_icon_prefix">Password</label>
                        </div>
                    </div>
                </form>
            </div>

        </div>
        <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
        <!--<script src="materialize/js/materialize.min.js"></script>-->
    </body>
</html>
