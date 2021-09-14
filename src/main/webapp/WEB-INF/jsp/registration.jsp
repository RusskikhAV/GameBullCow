<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
  <title>Регистрация</title>
</head>

<body>
<div>
  <form:form method="POST" modelAttribute="userForm">
    <h2>Регистрация</h2>
    <div class="login_form">
      <form:input type="text" path="username" placeholder="Username"
                  autofocus="true"></form:input>
      <form:errors path="username"></form:errors>
      ${usernameError}
    </div>

    <div class="password_form">
      <form:input type="password" path="password" placeholder="Password"></form:input>
    </div>

    <div class="password_form">
      <form:input type="password" path="passwordConfirm"
                  placeholder="Confirm your password"></form:input>
      <form:errors path="password"></form:errors>
      ${passwordError}

    </div>

    <div class="button_login">
      <button type="submit">Зарегистрироваться</button>
      </form:form>
    </div>

    <div class="register-link">
      <div class="row">
          <a href="/">Главная</a>
      </div>
    </div>
</div>
</body>
</html>