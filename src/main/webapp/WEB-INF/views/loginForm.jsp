<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <form:form action="login1" method="post" modelAttribute="user">
    Enter email id: <form:input path="email"/><br><br>
    Enter Password: <form:input path="password"/><br><br>
    <form:button>Login</form:button>
    </form:form>
</body>
</html>