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
    <title>Войти</title>
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
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=PT+Serif:400,400i,700,700i&amp;subset=cyrillic" rel="stylesheet">
</head>
<body>
<div class="wrapper">
    <div class="auth-form white-form">
        <div class="overlay-darken-logo">
            <div class="darken-logo">
                <a href="${contextPath}/"><img src="${contextPath}/resources/img/friday-logo.png" alt="friday-logo"></a>
            </div>
        </div> <!-- overlay-darken-logo -->
        <div class="overlay-lighten-dialog">
            <div class="overlay-scf-sending">
                на ваш Email отправлен пароль к аккаунту.
            </div>
            <div class="overlay-content">
                <h1>войти</h1>
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
                <div class="overlay-frg-pas">
                    <span class="title-enter-email">введите ваш Email для смены пароля.</span>
                    <input type="email" placeholder="email">
                    <span class="error-wrong-email">ваш Email не зарегистрирован.</span>
                </div> <!-- overlay-frg-pas -->
                <form method="POST" action="${contextPath}/login">
                <div class="input-field">
                    <input name="username" autofocus="true" placeholder="email">
                    <input name="password"  type="password" placeholder="пароль">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </div>
                <span class="error-wrong-pass-or-login">неверный email или пароль.</span>
                <div class="checkbox-remember-me">
                    <input type="checkbox" id="remember-me"><label for="remember-me">запомнить меня.</label>
                </div>
                <a href="#" class="btn-link-send"><button class="modal-send-button"type="submit">отправить</button></a>
                </form>
                <a href="#" class="link-return-back"><div class="icon-left-arrow"><img src="${contextPath}/resources/img/left-arrow.png" alt="left-arrow"></div>вернуться к началу.</a>
                <div class="bottom-link">
                    <span>нет аккаунта?</span> <a href="${contextPath}/registration">Регистрация.</a>
                </div>
                <a href="#" class="link-forgot-pass">забыли пароль?</a>
            </div>
        </div> <!-- overlay-lighten-dialog-auth -->
    </div> <!-- auth-form -->
</div> <!-- wrapper -->
<script src="${contextPath}/resources/js/libs.min.js"></script>
<script src="${contextPath}/resources/js/common.js"></script>
</body>
</html>



<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<meta charset="utf-8">--%>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <%--<meta name="description" content="">--%>
    <%--<meta name="author" content="">--%>

    <%--<title>Log in with your account</title>--%>

    <%--<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">--%>
    <%--<link href="${contextPath}/resources/css/common.css" rel="stylesheet">--%>

    <%--<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>--%>
    <%--<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--%>

<%--</head>--%>

<%--<body>--%>

<%--<div class="container">--%>

    <%--<form method="POST" action="${contextPath}/login" class="form-signin">--%>
        <%--<h2 class="form-heading">Входи дорогой, гостем Будешь!</h2>--%>

        <%--<div class="form-group ${error != null ? 'has-error' : ''}">--%>
            <%--<span>${message}</span>--%>
            <%--<input name="username" type="text" class="form-control" placeholder="Username"--%>
                   <%--autofocus="true"/>--%>
            <%--<input name="password" type="password" class="form-control" placeholder="Password"/>--%>
            <%--<span>${error}</span>--%>
            <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>

            <%--<button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>--%>
            <%--<h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>--%>
        <%--</div>--%>

    <%--</form>--%>

<%--</div>--%>
<%--<!-- /container -->--%>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>
<%--<script src="${contextPath}/resources/js/bootstrap.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>