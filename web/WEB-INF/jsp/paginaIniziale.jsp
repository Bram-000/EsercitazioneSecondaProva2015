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

        <%
            //PER CREARE LA SESSIONE - PER LA PAGINA CONTROLLALOGIN
            /*session.setAttribute("username", "marco");*/
            String myname = (String) session.getAttribute("username");

            if (myname != null) {
                /**
                 * **cambiare != con == ****
                 */
        %><jsp:forward page="/login"/><%
            }

            //PER "DISTRUGGERE" LA SESSIONE - PER LA PAGINA LOGOUT
            /*session.invalidate();
             response.sendRedirect("restanes.jsp");*/

        %>



        <div class="row">
            <nav>
                <div class="nav-wrapper lighten-4">
                    <a href="#" class="brand-logo">Home</a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li><a href="./login">Login</a></li>
                        <li><a href="#">Sign Up</a></li>
                        <li><a href="profilo/">Profilo (tmp)</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="row">
                <div class="input-field col l4 s12">
                    <select multiple onchange="filtro()">
                        <option value="" disabled selected>Date Eventi</option>
                        <c:forEach items="${eventi}" var="ev">
                            <option value="${ev.data}">${ev.data}</option>
                        </c:forEach>
                    </select>
                    <label>Scegli la data</label>
                </div>

                <div class="input-field col l4 s12">
                    <select multiple  onchange="filtro()">
                        <option value="" disabled selected>Luogo Eventi</option>
                        <c:forEach items="${eventi}" var="ev">
                            <option value="${ev.luogo}">${ev.luogo}</option>
                        </c:forEach>
                    </select>
                    <label>Scegli il luogo</label>
                </div>

                <button class="waves-effect waves-light btn-large black col l4 s12" onclick="tuttiGliEventi()">Tutti gli eventi</button>
            </div>
            <div id="eventi">
                <ul class="collection with-header">
                    <li class="collection-header"><h5>Eventi</h5></li>
                        <c:forEach items="${eventi}" var="ev">
                        <li class="collection-item">
                            <h6><b>Titolo Evento</b></h6>
                            <p>${ev.luogo}<br/>${ev.data}</p>
                            <b>Commenti...</b>
                            <c:forEach items="${commenti}" var="comm">
                                <ul class="collection">
                                    <li class="collection-item">
                                        <div class="title"><b>${comm.commento}</b></div>
                                        <p>
                                            ${comm.voto}
                                        </p>
                                    </li>
                                </ul>
                            </c:forEach>
                        </li>
                    </c:forEach>
                </ul>
            </div>

            <!--se login fatto possibilità di aggiungere commento
            <div class="section white">
                <ul class="collapsible popout" data-collapsible="accordion">
                    <-c:forEach items="$-{eventi}" var="ev">
                        <li>
                            <div class="collapsible-header blue" style="color: white;"><i class="material-icons">done</i>Titolo Evento</div>
                            <div class="collapsible-body">
                                <p>$-{ev.luogo}<br/>$-{ev.data}</p>
                                <p>
                                    Commenti:
                                    <-c:forEach items="$-{commenti}" var="comm">
                                    <ul class="collection">
                                        <li class="collection-item avatar">
                                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAFb0lEQVRoge2ZW0wUVxjHp3h58KkptqZRowk0pk3RpKaNbZEnKbsuRE1VWEDXipeqD9UmjQUVAc2iNlGrXBYwXqpSGrMUXMHaiLZJmzax9qHWRNMHlV3njDpnUhb3zC6w++/DCi57mzMw0KbhS/4vs+d88/vP+c5lZgVhIiZiIkYdACZRiS2SJbWMEuakxHebEqZQwvqeSaFE/ZMS5pQltYxKbBGAlH+bW6AP2WyZsAOUsIeUMOiSxDwyYQeoh80ad3Cv6J1ORbWREhbQDR6rgEzUeq/onT4u8IqkFlLCqAHg0XqiSGrhmIHjNqZSUW0aA/Co0lIdAKYYCi+KmEaJ2jnm8ENSO0QR0wyBx21MHV/4sBTC2g0ZCT1l4/5LwuWz59FYXor9JVbsKcxD6SoTSleZ8MvlrhGV06jgFVEt4rnRY3cP2hqbUF60fAg4WvvW5+NKcwt+vXId0gNFhwmWPyL4XtL7MiVM1roBuU9RW/ppQvB4qlj7Ia40t4CKPh4TT7web6puA1RSHZrJRR9OVO3RBR+plqOHeedDjT74h2w25dikfmi9OGL4QV13tvGYCMhuNpPbwLPjQdKkj7r/xv4SKxfk0U1m3G3KxYWypTG/VdpWQrqvPSdkkVVzwQNIoRLzGPH07TYTbnxpQagzD7ichz5XHo5sNMe067rQyjMK3VwHQPqIvctTl/W7PksIvrfQhKv2pQhcDINH6tHXuSi3Dm9/+JPNXHNBJuwd7fIJH4mTrzz3ZJTlx5ZD2WoTnLuWwuuMBY/UzWOWmL4P7ni0J7Okfq49AhJr1Up0o+unGIBTO8wgzblJwSMV3f/nju95RuGCtoHwi0fSRJ1nzsYADILVrE1HrS09Bjj6enR/Z30dhwH1FocBpmgl+uqgPaGBWls66tbFGoi+Ht3/RNUenhGQeQxorv81O3ckNDDSEjqyfQvXfmCIgUNbPzLcQPWmYsMMaJZQpW2l4QYqbSuNKiH1llaivcUrYgDkb8zc8E9aYjez3QW5PJP4D54RcGolird5bTNnoM+lvYz2uXKxJefNmP6uk6eMWUZ5NrIf2y6hvGjZMICseWnYZs6ArzUnITxrzcFWUway5qWNBB4KYTu1R0Bii3iS3f39Dr7YVjLMQNa8NJxc9wrQnA60LQY6zGG1LQaa09CyOXWonV54Shhk4ntb0wCAFEqYmychuSfjtL1qmIGG4lTAIcTVuZIXhxnQA095D3OCIAiyyKp1JMbV0+fhXGiGOCcbWJEJ1E+OY2AKsCIT4txsOBea4apz6IGHIvrsXPCCIAjUw2ZRzq9uT485EUpfBsxYEtb8bKAhC3C88By+ISV8LSN7qF3oteV4epzrGA2ZML+uFxpBEASZqPVJEz/oQWD9/ufgkWq0AOcygRPTwjqXGb4Wp61/gx2026s1eY/rghcEQfB6vKk0yUu9f4M9PvyMJYApB+iMWIE684APchK292+sTvb0H/e4e17SbUAQBEGRmDVu2dR8mxh+UAUmoDk3rHyTZvunde2JTKwaEfxgUEltGJaw24tgRr62AZ0KLrDGlJJC2LFRwQtC+NOiQlj70NNvcBkOPzQKTR2R8O0AJo3agCCEP+7KhLkoYQisqRgzAwFb5WDduwz7uDsYAKZQSXUMvLd+zAwMvF8ChbDjACYbCh8Z6t6T+4JvFQ0YPgcWFg2ou5sqxgw8MtiZrpmBNRU3Q3Pjr+16FJprQWBt5W++hu9eHRf4yOh1dL7h33zwWnBBQb/+Vaeg37/pwLXe2kuvjzt4dABIYVWnCgJbDrX3W7a7BzI3+oLzrcHQHAtCcywIzrcGBzI3+Pot293+jw+1sarTq/8Tf7NOxET8D+IfjPEFsF2eGBAAAAAASUVORK5CYII=" alt="imm" class="circle">
                                            <div class="title"><b>$-{comm.commento}</b></div>
                                            <p>
                                                $-{comm.voto}
                                            </p>
                                        </li>
                                    </ul>
                                <-/c:forEach>
            <!--il prossimo UL visualizzato solo se fattop il login
            <ul class="collection">
                <li class="collection-item avatar">
            <!--<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAFb0lEQVRoge2ZW0wUVxjHp3h58KkptqZRowk0pk3RpKaNbZEnKbsuRE1VWEDXipeqD9UmjQUVAc2iNlGrXBYwXqpSGrMUXMHaiLZJmzax9qHWRNMHlV3njDpnUhb3zC6w++/DCi57mzMw0KbhS/4vs+d88/vP+c5lZgVhIiZiIkYdACZRiS2SJbWMEuakxHebEqZQwvqeSaFE/ZMS5pQltYxKbBGAlH+bW6AP2WyZsAOUsIeUMOiSxDwyYQeoh80ad3Cv6J1ORbWREhbQDR6rgEzUeq/onT4u8IqkFlLCqAHg0XqiSGrhmIHjNqZSUW0aA/Co0lIdAKYYCi+KmEaJ2jnm8ENSO0QR0wyBx21MHV/4sBTC2g0ZCT1l4/5LwuWz59FYXor9JVbsKcxD6SoTSleZ8MvlrhGV06jgFVEt4rnRY3cP2hqbUF60fAg4WvvW5+NKcwt+vXId0gNFhwmWPyL4XtL7MiVM1roBuU9RW/ppQvB4qlj7Ia40t4CKPh4TT7web6puA1RSHZrJRR9OVO3RBR+plqOHeedDjT74h2w25dikfmi9OGL4QV13tvGYCMhuNpPbwLPjQdKkj7r/xv4SKxfk0U1m3G3KxYWypTG/VdpWQrqvPSdkkVVzwQNIoRLzGPH07TYTbnxpQagzD7ichz5XHo5sNMe067rQyjMK3VwHQPqIvctTl/W7PksIvrfQhKv2pQhcDINH6tHXuSi3Dm9/+JPNXHNBJuwd7fIJH4mTrzz3ZJTlx5ZD2WoTnLuWwuuMBY/UzWOWmL4P7ni0J7Okfq49AhJr1Up0o+unGIBTO8wgzblJwSMV3f/nju95RuGCtoHwi0fSRJ1nzsYADILVrE1HrS09Bjj6enR/Z30dhwH1FocBpmgl+uqgPaGBWls66tbFGoi+Ht3/RNUenhGQeQxorv81O3ckNDDSEjqyfQvXfmCIgUNbPzLcQPWmYsMMaJZQpW2l4QYqbSuNKiH1llaivcUrYgDkb8zc8E9aYjez3QW5PJP4D54RcGolird5bTNnoM+lvYz2uXKxJefNmP6uk6eMWUZ5NrIf2y6hvGjZMICseWnYZs6ArzUnITxrzcFWUway5qWNBB4KYTu1R0Bii3iS3f39Dr7YVjLMQNa8NJxc9wrQnA60LQY6zGG1LQaa09CyOXWonV54Shhk4ntb0wCAFEqYmychuSfjtL1qmIGG4lTAIcTVuZIXhxnQA095D3OCIAiyyKp1JMbV0+fhXGiGOCcbWJEJ1E+OY2AKsCIT4txsOBea4apz6IGHIvrsXPCCIAjUw2ZRzq9uT485EUpfBsxYEtb8bKAhC3C88By+ISV8LSN7qF3oteV4epzrGA2ZML+uFxpBEASZqPVJEz/oQWD9/ufgkWq0AOcygRPTwjqXGb4Wp61/gx2026s1eY/rghcEQfB6vKk0yUu9f4M9PvyMJYApB+iMWIE684APchK292+sTvb0H/e4e17SbUAQBEGRmDVu2dR8mxh+UAUmoDk3rHyTZvunde2JTKwaEfxgUEltGJaw24tgRr62AZ0KLrDGlJJC2LFRwQtC+NOiQlj70NNvcBkOPzQKTR2R8O0AJo3agCCEP+7KhLkoYQisqRgzAwFb5WDduwz7uDsYAKZQSXUMvLd+zAwMvF8ChbDjACYbCh8Z6t6T+4JvFQ0YPgcWFg2ou5sqxgw8MtiZrpmBNRU3Q3Pjr+16FJprQWBt5W++hu9eHRf4yOh1dL7h33zwWnBBQb/+Vaeg37/pwLXe2kuvjzt4dABIYVWnCgJbDrX3W7a7BzI3+oLzrcHQHAtCcywIzrcGBzI3+Pot293+jw+1sarTq/8Tf7NOxET8D+IfjPEFsF2eGBAAAAAASUVORK5CYII=" alt="imm" class="circle">
            input solo se fatto il login
            <div class="title"><input type="text" placeholder="commento"/></div>
            <p>
                <input type="text" placeholder="voto"/>
            </p>
        </li>
    </ul>
            <!--end UL
            </p>
        </div>
    </li>
<-/c:forEach>
</ul>-->
        </div>
    </div>
    <!--<div class="parallax-container">
        <div class="parallax"><img src="https://www.techzilla.it/wp-content/uploads/2015/05/Sfondi-TZ-Sky-2.png"></div>
    </div>-->



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
                            $('select').material_select();
                            $("#eventi").hide();
                        });

                        function tuttiGliEventi() {
                            $("#eventi").show();
                        }

                        function filtro() {
                            $("#eventi").hide();
                        }

</script>
</body>
</html>
