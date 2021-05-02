<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>Insert title here</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        </head>

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
            <form:form name="myform" action="login" method="post" modelAttribute="user"
                onsubmit="return validateform()">
                Enter email id:
                <form:input path="email" /><br><br>
                Enter Password:
                <form:input path="password" /><br><br>
                <form:button>Login</form:button>
            </form:form>
        </body>

        </html>