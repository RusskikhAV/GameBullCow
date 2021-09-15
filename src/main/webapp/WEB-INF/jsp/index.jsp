<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
    <title>Главная</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/mainPageStyle.css">
</head>
<body>
<div>
    <h1>Здравствуйте,${pageContext.request.userPrincipal.name}</h1>
    <sec:authorize access="!isAuthenticated()">
        <h2><a href="/login">Войти</a></h2>
        <h3><a href="/registration">Зарегистрироваться</a></h3>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <h4><a href="/logout">Выйти</a></h4>
    </sec:authorize>
    <sec:authorize access="hasAnyRole('ROLE_ADMIN')" >
        <h6><a href="/admin">Пользователи</a></h6>
    </sec:authorize>
    <h5><a href="/gamebullcow">Играть!</a> </h5>

</div>
</body>
</html>