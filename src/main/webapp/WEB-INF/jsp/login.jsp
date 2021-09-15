<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
    <title>Вход</title>
</head>

<body>
<sec:authorize access="isAuthenticated()">
    <% response.sendRedirect("/"); %>
</sec:authorize>

<div>
    <form method="POST" action="/login">
        <h2>Вход в систему</h2>

        <div class="login_form">
            <input name="username" type="text" placeholder="Username" autofocus="true"/>
        </div>

        <div class="password_form">
            <input name="password" type="password" placeholder="Password"/>
        </div>

        <div class="register-link">
            <div class="row">
            <a href="/registration" >Зарегистрироваться</a>
            </div>
        </div>

        <div class="button_login">
            <button type="submit">Войти</button>
        </div>
    </form>
</div>

</body>
</html>