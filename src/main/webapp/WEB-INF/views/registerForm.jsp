<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  <html>

  <head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
  </head>

  <script>
    function validateform() {
      var email = document.myform.email.value;
      var password = document.myform.password.value;
      console.log(email);
      console.log(password);

      var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

      if (email == null || email == "") {
        alert("email can't be blank");
        return false;
      }
      else if (!email.match(mailformat)) {
        alert("Enter valid email address");
        return false;
      } else if (password.length < 6) {
        alert("Password must be at least 6 characters long.");
        return false;
      }
    }
  </script>

  <body>
    <div align="center">
      <h2>User Registration</h2>
      <form:form name="myform" action="register" method="post" modelAttribute="user" onsubmit="return validateform()">
        Enter email id :
        <form:input path="email" /><br /><br />
        Enter password :
        <form:input path="password" /><br /><br />
        <form:button>Register</form:button>
      </form:form>
    </div>
  </body>

  </html>