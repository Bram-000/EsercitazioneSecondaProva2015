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
                <!--    ...immagine...
                <div class="parallax-container">
                    <div class="parallax"><img src="http://www.boorp.com/sfondi_gratis_desktop_pc/sfondi_gratis/sfondi_HD_widescreen_1920x1080/z_ferrovia_e_mongolfiera.jpg"></div>
                </div>-->

            <div class="container">
                <div class="section white">
                    <ul class="collapsible popout" data-collapsible="accordion">
                        <c:forEach items="${eventi}" var="ev">
                            <li>
                                <div class="collapsible-header blue" style="color: white;"><i class="material-icons">done</i>Titolo Evento</div>
                                <div class="collapsible-body">
                                    <p>${ev.luogo}<br/>${ev.data}</p>
                                    <p>
                                        Commenti:
                                        <ul class="collection">
                                            <li class="collection-item avatar">
                                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAFb0lEQVRoge2ZW0wUVxjHp3h58KkptqZRowk0pk3RpKaNbZEnKbsuRE1VWEDXipeqD9UmjQUVAc2iNlGrXBYwXqpSGrMUXMHaiLZJmzax9qHWRNMHlV3njDpnUhb3zC6w++/DCi57mzMw0KbhS/4vs+d88/vP+c5lZgVhIiZiIkYdACZRiS2SJbWMEuakxHebEqZQwvqeSaFE/ZMS5pQltYxKbBGAlH+bW6AP2WyZsAOUsIeUMOiSxDwyYQeoh80ad3Cv6J1ORbWREhbQDR6rgEzUeq/onT4u8IqkFlLCqAHg0XqiSGrhmIHjNqZSUW0aA/Co0lIdAKYYCi+KmEaJ2jnm8ENSO0QR0wyBx21MHV/4sBTC2g0ZCT1l4/5LwuWz59FYXor9JVbsKcxD6SoTSleZ8MvlrhGV06jgFVEt4rnRY3cP2hqbUF60fAg4WvvW5+NKcwt+vXId0gNFhwmWPyL4XtL7MiVM1roBuU9RW/ppQvB4qlj7Ia40t4CKPh4TT7web6puA1RSHZrJRR9OVO3RBR+plqOHeedDjT74h2w25dikfmi9OGL4QV13tvGYCMhuNpPbwLPjQdKkj7r/xv4SKxfk0U1m3G3KxYWypTG/VdpWQrqvPSdkkVVzwQNIoRLzGPH07TYTbnxpQagzD7ichz5XHo5sNMe067rQyjMK3VwHQPqIvctTl/W7PksIvrfQhKv2pQhcDINH6tHXuSi3Dm9/+JPNXHNBJuwd7fIJH4mTrzz3ZJTlx5ZD2WoTnLuWwuuMBY/UzWOWmL4P7ni0J7Okfq49AhJr1Up0o+unGIBTO8wgzblJwSMV3f/nju95RuGCtoHwi0fSRJ1nzsYADILVrE1HrS09Bjj6enR/Z30dhwH1FocBpmgl+uqgPaGBWls66tbFGoi+Ht3/RNUenhGQeQxorv81O3ckNDDSEjqyfQvXfmCIgUNbPzLcQPWmYsMMaJZQpW2l4QYqbSuNKiH1llaivcUrYgDkb8zc8E9aYjez3QW5PJP4D54RcGolird5bTNnoM+lvYz2uXKxJefNmP6uk6eMWUZ5NrIf2y6hvGjZMICseWnYZs6ArzUnITxrzcFWUway5qWNBB4KYTu1R0Bii3iS3f39Dr7YVjLMQNa8NJxc9wrQnA60LQY6zGG1LQaa09CyOXWonV54Shhk4ntb0wCAFEqYmychuSfjtL1qmIGG4lTAIcTVuZIXhxnQA095D3OCIAiyyKp1JMbV0+fhXGiGOCcbWJEJ1E+OY2AKsCIT4txsOBea4apz6IGHIvrsXPCCIAjUw2ZRzq9uT485EUpfBsxYEtb8bKAhC3C88By+ISV8LSN7qF3oteV4epzrGA2ZML+uFxpBEASZqPVJEz/oQWD9/ufgkWq0AOcygRPTwjqXGb4Wp61/gx2026s1eY/rghcEQfB6vKk0yUu9f4M9PvyMJYApB+iMWIE684APchK292+sTvb0H/e4e17SbUAQBEGRmDVu2dR8mxh+UAUmoDk3rHyTZvunde2JTKwaEfxgUEltGJaw24tgRr62AZ0KLrDGlJJC2LFRwQtC+NOiQlj70NNvcBkOPzQKTR2R8O0AJo3agCCEP+7KhLkoYQisqRgzAwFb5WDduwz7uDsYAKZQSXUMvLd+zAwMvF8ChbDjACYbCh8Z6t6T+4JvFQ0YPgcWFg2ou5sqxgw8MtiZrpmBNRU3Q3Pjr+16FJprQWBt5W++hu9eHRf4yOh1dL7h33zwWnBBQb/+Vaeg37/pwLXe2kuvjzt4dABIYVWnCgJbDrX3W7a7BzI3+oLzrcHQHAtCcywIzrcGBzI3+Pot293+jw+1sarTq/8Tf7NOxET8D+IfjPEFsF2eGBAAAAAASUVORK5CYII=" alt="imm" class="circle">
                                                <div class="title"><b>User1</b></div>
                                                <p>
                                                    Commento....
                                                </p>
                                            </li>
                                            <li class="collection-item avatar">
                                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAFfUlEQVRoge2ZbWxTVRjHb4aMhOyT4AfTYQT5gESMCwG2gZjdgutWOkFFYCgvxrGoYCTWOcYYRIlAAiilYy8tMglhyJw6F9oURpdAAl82Ji+bqOiAbj1XuKdIS891MPb3Q7fRdS+9p+2mMXuS58vtznN/v3Oee++5d4IwGqMxGlEHgDFUYsmypBRQwqop8TdTwjyUsPvd6aFEuUIJq5YlpYBKLBlA3L/NLdB2NkkmbCclrJ0SBq6UWJtM2E7axhJHHNzr9k6kbqWcEtbBDd4/O2SilHjd3okjAu+RlGxKGI0BeGje9khK9rCBoxnx1K1YhgE8pLWUUgBjYwrvdmM8JYpt2OF7UznhdmN8TODRjPiRhQ+kh7CamKwEb9tcavgFe3ebsHrVGugz9RBFEaIooqjw04jaKSp4j1tZqfZkt9vvwfTFASxcuLAXOji1Wi1qv3eA3PiLU4ItiwjeR3xPUMJkNSeR3X4UFmwdEDw0DYYsVB2r4ZG47W3zTuAWoJJSqvYkltIKVfDBefRwFc/1YOaDb2eTqMqH1LWf26DT6bgFdDodfmtxqZXokF1Mo1qge3ugqniJ2TIkaPYSLUry0nHFmom6PRlYoH30m6XkkOpVkN1shyp4AHFUYm1qC697J7cf9FuvLUD5pnRcPaRHl90ABOWPOzKg7f67DzZs5LkWbqraANI/WQrPXcJgyIIoilizdAG+2pyO3w/r+wAPlEe3BVpuxYqVXHckmbDZ4dsnsCVWXbRn1sNBh6YoitBn6rkEPJKSH34FJPbdSAmIosglQAmrCi8QePFQXdS6PbePgHnVVBSvntoPOPS4KIqwbs/lFFAuqxBgHp6iXcdfwNdbdL1gxaun4sCa/gKhxysK09F1PIl3BWQ1AlwvKezcbsC+iLuFYF8Edn4vr0BHzAUoYeisf49boLP+fV541QJcLUQJg9Jo4RZQLhyMREBNCymXeQvfudmOLsfrquG7HEtx52Z7BALKJTUrUB3BzMDXchKwZ6kQyIKv5WQksw+q5jbK+yDrJ2HLGBzelgFfS12k8PAQ9kn4FZBYcqQnoIQBlnHAsWlAzXzAlhnImvmBY5ZxEdelhEEm/llhBQDEUcJcEQuUCkNmFALqNnOCIAiym+3gKe769S42rjyBtGlW+E0Jg8L7TQnQTj+Ibe86QVp9fO3j9n+uCl4QBIG2sUSq8nlQV9kKo/405jx1AEkaE859PHdQgbMfpSBJY8JLz1hh1J9GXWWrytZhf3O90AiCIMhEKRmq6C2XH2UFF5Cbakduqh2Lph9BksaEVbMLcL84vh/8/eJ4vDkrH0kaE159/ljvOEthE265/OEu3v1c8IIgCN427wQ6xEt96aZH8LmpduSknEDK06VI0pjwdooRFwtn4N6+BNzbl4CfNj+HtclGJGlMmDe5DOtSbX3GWgqbhpr9W3dddx/nFhAEQfBIbMVARW0V1/oA9OTa2bVI7ZYYKOdOLsPaObUDjrVVXBtMYmlE8D1BJaUsuCBp9eHDl08NCBFYCRtemVGJeVPKMTPRjJmJZrw4pRyLZ1QiJ8U26LiN6XUg132hrWOKCl4QAp8WPYTV9BR1HPljUIho81TQRd39aXFM1AKCEPi4KxNWSwmD2dgwbALFeY09fV8bs4+7PQFgLJWU0qJlZ4ZNoGj5GXgI2w/gsZjCB8c3X7Z8lr+4vjPW8PlL6jsr9zRvGzbw4Dh33KUxGxsaN6Q5ogZfn+ZAsbGx4Uz19SdHBD446o7cmF6+pcmZZ3A+4AXPMzgflG9ucp46fP3ZEQcPDQBxVeaW5dYtTTW7cs67tmaf9edlOR+uT3NgfZoDeVnOh1uzz/p35Zx3WYsu/vCt+eob/4l/s47GaPwP4h+/eK/pNbG1ZgAAAABJRU5ErkJggg==" alt="imm" class="circle">
                                                <div class="title"><b>User2</b></div>
                                                <p>
                                                    Commento....
                                                </p>
                                            </li>
                                        </ul>
                                    </p>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="parallax-container">
                <div class="parallax"><img src="https://www.techzilla.it/wp-content/uploads/2015/05/Sfondi-TZ-Sky-2.png"></div>
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
