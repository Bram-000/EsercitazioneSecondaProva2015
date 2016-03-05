<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.List"%>
<%@page import="main.Eventi"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./resources/css/style.css">
        <link rel="stylesheet" href="./resources/materialize/css/materialize.min.css">
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
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
            <div class="row">
                <p class="homeEventi">
                    ...immagine...
                <div class="parallax-container">
                    <div class="parallax"><img src="http://www.boorp.com/sfondi_gratis_desktop_pc/sfondi_gratis/sfondi_HD_widescreen_1920x1080/z_ferrovia_e_mongolfiera.jpg"></div>
                </div>
                
                <div class="container">
                <div class="section white">
                    <ul class="collapsible popout" data-collapsible="accordion">
                        <c:forEach items="${eventi}" var="ev">
                            <li>
                                <div class="collapsible-header blue"><i class="material-icons">done</i>${ev.luogo}</div>
                                <div class="collapsible-body"><p>${ev.data}</p></div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                </div>
                <div class="parallax-container">
                    <div class="parallax"><img src="http://www.hdwallpapersnew.net/wp-content/uploads/2015/10/joker-batman-high-resolution-desktop-background-download-images-free.jpg"></div>
                </div>



                </p>
            </div>

        </div>

        <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>

        <!--<script src="materialize/js/materialize.min.js"></script>-->
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
