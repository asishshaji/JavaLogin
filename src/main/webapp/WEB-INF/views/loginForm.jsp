<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>Login Form</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
                crossorigin="anonymous">
        </head>

        <style>
            html {
                height: 100%;
            }

            body {
                margin: 0;
            }

            .bg {
                animation: slide 3s ease-in-out infinite alternate;
                background-image: linear-gradient(-60deg, rgb(126, 125, 125) 50%, rgb(39, 39, 39) 50%);
                bottom: 0;
                left: -50%;
                opacity: .5;
                position: fixed;
                right: -50%;
                top: 0;
                z-index: -1;
            }

            .bg2 {
                animation-direction: alternate-reverse;
                animation-duration: 4s;
            }

            .bg3 {
                animation-duration: 5s;
            }

            .content {
                background-color: rgba(211, 211, 211, 0.8);
                border-radius: .8em;
                box-shadow: 0 0 .25em rgba(73, 73, 73, 0.25);
                box-sizing: border-box;
                left: 50%;
                padding: 8vmin;
                position: fixed;
                text-align: center;
                top: 50%;
                transform: translate(-50%, -50%);
            }

            h1 {
                font-family: monospace;
            }

            @keyframes slide {
                0% {
                    transform: translateX(-25%);
                }

                100% {
                    transform: translateX(25%);
                }
            }

            .form-control {
                padding: 14px;
            }
        </style>

        <script>
            function validateform() {
                var email = document.myform.email.value;
                var password = document.myform.password.value;
                console.log(email);
                console.log(password);

                if (email == null || email == "") {
                    alert("email can't be blank");
                    return false;
                } else if (password.length < 6) {
                    alert("Password must be at least 6 characters long.");
                    return false;
                }
            }
        </script>

        <body>
            <div class="bg"></div>
            <div class="bg bg2"></div>
            <div class="bg bg3"></div>
            <div class="content">
                <form:form name="myform" action="login" method="post" modelAttribute="user"
                    onsubmit="return validateform()">
                    <div class="form-group">
                        <form:input path="email" class="form-control" placeholder="Enter email" />
                    </div>
                    <div class="form-group mt-2">
                        <form:input path="password" class="form-control" placeholder="Enter password" type="password" />
                    </div>
                    <div class="d-grid gap-2 mt-4">
                        <button class="btn btn-dark p-2" type="submit">Login</button>
                    </div>
                </form:form>
            </div>
        </body>

        </html>