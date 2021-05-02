<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
    </head>
<body>
  <div align="center">
      <h2>User Registration</h2>
      <form:form action="register" method="post" modelAttribute="user">
      Enter email id : <form:input path="email"/><br/><br/> 
      Enter password : <form:input path="password"/><br/><br/>
      <form:button>Register</form:button> 
      </form:form>
  </div>
</body>
</html>