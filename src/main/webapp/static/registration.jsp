<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Регистрация</title>
    <meta name="description" content="thx god it's friday">
    <meta mame="author" content="SRL FRIDAY">
    <link rel="stylesheet" href="${contextPath}/resources/css/main.css">
    <!-- Стандартная иконка -->
    <link rel="icon" type="image/x-icon" href="${contextPath}/resources/img/favicon/favicon.png">
    <!-- Рекоменндованная иконка -->
    <link rel="icon" type="image/png" href="${contextPath}/resources/img/favicon/apple-touch-icon-114x114.png">
    <!-- Иконка Apple -->
    <link rel="apple-touch-icon" href="${contextPath}/resources/img/favicon/apple-touch-icon-114x114.png">
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=PT+Serif:400,400i,700,700i&amp;subset=cyrillic"
          rel="stylesheet">
</head>
<body>
<div class="wrapper">
    <div class="reg-form white-form">
        <div class="overlay-darken-logo">
            <div class="darken-logo">
                <a href="${contextPath}/"><img src="${contextPath}/resources/img/friday-logo.png" alt="friday-logo"></a>
            </div>
        </div> <!-- overlay-darken-logo -->
        <div class="overlay-lighten-dialog">
            <div class="overlay-scf-reg">
                проверьте ваш Email для подтверждения.
            </div>
            <div class="overlay-content">
                <h1>регистрация</h1>
                <a href="#" class="social-btn social-btn-top">
                    <div class="modal-social-icon">
                        <img src="${contextPath}/resources/img/facebook-modal-icon.png" alt="modal-facebook-icon">
                    </div>
                    <span id="text-white">facebook</span>
                </a>
                <a href="#" class="social-btn social-btn-bottom">
                    <div class="modal-social-icon">
                        <img src="${contextPath}/resources/img/vk-modal-icon.png" alt="modal-vk-icon">
                    </div>
                    <span>vkontakte</span>
                </a>
<form:form method="POST" modelAttribute="userForm">
                <div class="input-field">
    <form:input type="text" path="username"  placeholder="логин"
                autofocus="true"></form:input>
    <form:errors path="username"></form:errors>

    <spring:bind path="password">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="password" path="password"  placeholder="Password"></form:input>
            <form:errors path="password"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="confirmPassword">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="password" path="confirmPassword"
                        placeholder="Confirm your password"></form:input>
            <form:errors path="confirmPassword"></form:errors>
        </div>
    </spring:bind>
                </div>
                <span class="error-login-taken">логин уже занят.</span>
                <span class="error-email-has-been-registered">email уже зарегестрирован.</span>
                <a href="#" class="btn-link-send">
                    <button class="modal-send-button" type="submit">отправить</button>
                    </form:form>
                </a>
                <div class="bottom-link">
                    <span>есть аккаунт?</span> <a href="${contextPath}/login">Войти.</a>
                </div>
                <a href="#" class="link-to-rules">правила портала.</a>
            </div>
        </div> <!-- overlay-lighten-dialog -->
    </div> <!-- reg-form -->
</div> <!-- wrapper -->
<script src="${contextPath}/resources/js/libs.min.js"></script>
<script src="${contextPath}/resources/js/common.js"></script>
</body>
</html>





<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
    <%--<meta charset="utf-8">--%>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <%--<meta name="description" content="">--%>
    <%--<meta name="author" content="">--%>

    <%--<title>Create an account</title>--%>

    <%--<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">--%>
    <%--<link href="${contextPath}/resources/css/common.css" rel="stylesheet">--%>


    <%--<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>--%>
    <%--<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--%>

<%--</head>--%>

<%--<body>--%>

<%--<div class="container">--%>

    <%--<form:form method="POST" modelAttribute="userForm" class="form-signin">--%>
        <%--<h2 class="form-signin-heading">Create your account</h2>--%>
        <%--<spring:bind path="username">--%>
            <%--<div class="form-group ${status.error ? 'has-error' : ''}">--%>
                <%--<form:input type="text" path="username" class="form-control" placeholder="Username"--%>
                            <%--autofocus="true"></form:input>--%>
                <%--<form:errors path="username"></form:errors>--%>
            <%--</div>--%>
        <%--</spring:bind>--%>

        <%--<spring:bind path="password">--%>
            <%--<div class="form-group ${status.error ? 'has-error' : ''}">--%>
                <%--<form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>--%>
                <%--<form:errors path="password"></form:errors>--%>
            <%--</div>--%>
        <%--</spring:bind>--%>

        <%--<spring:bind path="confirmPassword">--%>
            <%--<div class="form-group ${status.error ? 'has-error' : ''}">--%>
                <%--<form:input type="password" path="confirmPassword" class="form-control"--%>
                            <%--placeholder="Confirm your password"></form:input>--%>
                <%--<form:errors path="confirmPassword"></form:errors>--%>
            <%--</div>--%>
        <%--</spring:bind>--%>

        <%--<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>--%>
    <%--</form:form>--%>

<%--</div>--%>
<%--<!-- /container -->--%>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>
<%--<script src="${contextPath}/resources/js/bootstrap.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>