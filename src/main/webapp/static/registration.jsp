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
        <div class="overlay-bg" style="background-image: url(${contextPath}/resources/img/bg-reg.jpg)">
            <a href="${contextPath}/" class="top-darken-button">
                вернуться на главную
            </a>
            <div class="reg-wrapper-center">
                <div class="darken-logo">
                    <a href="${contextPath}/"><img src="${contextPath}/resources/img/friday-logo.png" alt="friday-logo"></a>
                </div>
                <div class="overlay-scf-reg">
                    проверьте ваш Email для подтверждения.
                </div>
                <div class="overlay-content">
                    <h1>регистрация</h1>
                    <a href="#" class="social-btn social-btn-top">
                        <div class="social-icon">
                            <img src="${contextPath}/resources/img/facebook-modal-icon.png" alt="facebook-icon">
                        </div>
                        <span class="text-white">facebook</span>
                    </a>
                    <a href="#" class="social-btn social-btn-bottom">
                        <div class="social-icon">
                            <img src="${contextPath}/resources/img/vk-modal-icon.png" alt="vk-icon">
                        </div>
                        <span>vkontakte</span>
                    </a>
                    <form:form method="POST" modelAttribute="userForm">
                        <div class="reg-input-fields">
                            <form:input  type="text" path="username" placeholder="email" autofocus="true"></form:input>
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
                        <span class="error-bottom">логин уже занят.</span> <!-- email уже зарегестрирован. --> <!-- пароль слишком короткий. -->
                        <button class="send-button" onmousedown="return false" onselectstart="return false">отправить</button>
                    </form:form>
                    <a href="${contextPath}/login" class="bottom-link-to-auth">уже есть аккаунт? <span>Войти</span></a>
                    <a href="#" class="bottom-link-to-rules">правила портала.</a>
                </div> <!-- overlay-content -->
            </div> <!-- reg-wrapper-center -->
            <div class="lang">
                <a href="#">ru</a>
                <a href="#">md</a>
                <a href="#">en</a>
            </div> <!-- lang -->
        </div> <!-- overlay-bg -->
    </div> <!-- wrapper -->
    <script src="${contextPath}/resources/js/libs.min.js"></script>
    <script src="${contextPath}/resources/js/common.js"></script>
</body>
</html>