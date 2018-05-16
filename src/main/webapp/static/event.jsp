<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Friday.md | Добавить событие</title>
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
    <div class="top-black-nav">
        <div class="top-black-nav-wrapper">
            <div class="languages">
                <a href="#" class="languages-wrapper nav-hover" id="language-ru">ru</a>
                <a href="#" class="languages-wrapper nav-hover" id="language-md">md</a>
                <a href="#" class="languages-wrapper nav-hover" id="language-en">en</a>
            </div>
            <div class="social-links-nav">
                <a href="#" class="social-link"><img src="${contextPath}/resources/img/instagram.png" alt="instagram"></a>
                <a href="#" class="social-link"><img src="${contextPath}/resources/img/facebook.png" alt="instagram"></a>
                <a href="#" class="social-link"><img src="${contextPath}/resources/img/vk.png" alt="instagram"></a>
            </div>
            <div class="nav-btn">
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <div class="panel-body" id="response"></div>
                    <div class="user-profile">
                        <div class="user-profile-wrapper" onmousedown="return false" onselectstart="return false">
                            <div class="arrow-down-top-menu">
                                <img src="${contextPath}/resources/img/arrow-down-icon.png" alt="arrow-down">
                            </div>
                            <div class="user-top-avatar">
                                <img src="${contextPath}/resources/img/user-avatar-1.png" alt="user-avatar">
                            </div>
                            <div class="user-name-top-menu">
                                <p>${pageContext.request.userPrincipal.name}</p>
                            </div>
                            <div class="top-menu-list">
                                <a href="${contextPath}/event/user/${pageContext.request.userPrincipal.name}">мой аккаунт</a>
                                <a href="${contextPath}/user/${pageContext.request.userPrincipal.name}">настройки</a>
                                <div class="top-profile-sep"></div>
                                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                </form>
                                <a onclick="document.forms['logoutForm'].submit()">Logout</a>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name == null}">
                    <a href="#" class="account-link reg-link nav-hover">Регистрация</a>
                    <a href="#" class="account-link auth-link nav-hover">Войти</a>
                </c:if>
            </div>
        </div>
    </div> <!-- top-black-nav -->
    <div class="overlay-darken"></div>
    <div class="overlay-dialog">
        <div class="overlay-darken-logo">
            <div class="lighten-modal-logo">
                <img src="${contextPath}/resources/img/white-friday-logo.png" alt="friday-logo">
            </div>
        </div> <!-- overlay-darken-logo -->
        <div class="overlay-lighten-dialog-reg modal-form">
            <div class="overlay-scf-reg">
                проверьте ваш Email для подтверждения.
            </div>
            <button class="close-modal"><img src="${contextPath}/resources/img/close-icon.png" alt="close-wondow-icon">
            </button>
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
                <form method="POST" action="${contextPath}/registration">
                    <div class="modal-input-fields">
                        <input type="email" placeholder="email">
                        <input type="text" placeholder="логин">
                        <input type="password" placeholder="пароль">
                    </div>
                    <span class="error-login-taken">логин уже занят.</span>
                    <span class="error-email-has-been-registered">email уже зарегестрирован.</span>
                    <a href="#" class="btn-link-send">
                        <button class="modal-send-button">отправить</button>
                    </a>
                </form>
                <a href="#" class="link-to-rules">правила портала.</a>
            </div>
        </div> <!-- overlay-lighten-dialog-reg -->
        <div class="overlay-lighten-dialog-auth modal-form">
            <div class="overlay-scf-seniding">
                на ваш Email отправлен пароль к аккаунту.
            </div>
            <button class="close-modal"><img src="${contextPath}/resources/img/close-icon.png" alt="close-wondow-icon">
            </button>
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
                    <div class="modal-input-fields">
                        <input type="email" placeholder="email">
                        <input type="password" placeholder="пароль">
                    </div>
                    <span class="error-wrong-pass-or-login">неверный email или пароль.</span>
                    <div class="checkbox-remember-me">
                        <input type="checkbox" id="remember-me"><label for="remember-me">запомнить меня.</label>
                    </div>
                    <a href="#" class="btn-link-send">
                        <button class="modal-send-button">отправить</button>
                    </a>
                </form>
                <a href="#" class="link-return-back">
                    <div class="icon-left-arrow"><img src="${contextPath}/resources/img/left-arrow.png"
                                                      alt="left-arrow"></div>
                    вернуться к началу.</a>
                <a href="#" class="link-forgot-pass">забыли пароль?</a>
            </div>
        </div> <!-- overlay-lighten-dialog-auth -->
    </div> <!-- overlay-dialog -->
    <div class="white-banner">
        <div class="white-banner-wrapper">
            <a href="${contextPath}/event/create" class="add-event-link">Добавить событие</a>
            <a href="${contextPath}/" class="friday-logo"><img src="${contextPath}/resources/img/friday-logo.png" alt="friday-logo"></a>
        </div> <!-- white-banner-wrapper -->
    </div> <!-- white-banner -->
    <div class="page-title">
        <p class="page-title-p">${event.title}</p>
    </div> <!-- page-title -->
    <div class="event-page-block">
        <div class="chat-block">
            <div class="chat-title">обсуждение события</div>
            <div class="chat-content">
                <div class="user-message">
                    <div class="user-avatar"><img src="${contextPath}/resources/img/user-avatar-1.png" alt="user-avatar">
                    </div>
                    <div class="user-message-content">
                        <p class="chat-username">Larisa Luka</p>
                        <p class="chat-message">
                            Lorem ipsum dolor
                        </p>
                        <span>19:00</span>
                    </div>
                </div>
            </div>
            <div class="chat-input-message">
                <textarea class="input-message" name="textinput" cols="1" rows="1" placeholder="Введите сообщение.."></textarea>
                <button type="button" class="send-message"><img src="${contextPath}/resources/img/send-button.png" alt="send-button"></button>
            </div>
        </div> <!-- chat-block -->
        <div class="event-page event-content">
            <div class="event-sponsor">
                <div class="event-user-avatar">
                    <img src="${contextPath}/resources/img/user-avatar-1.png" alt="user-avatar">
                </div>
                <div class="event-sponsor-name">
                    организатор
                    <a href="#"><p>${event.title}</p></a>
                </div>
                <div class="event-more-options-icon">
                    <img src="${contextPath}/resources/img/more-options-icon.png" alt="more-option-icon">
                </div>
                <div class="event-option-menu">
                    <a href="#" class="reason-btn">Пожаловаться</a>
                </div>
            </div>
            <div class="event-banner">
                <img src="data:image/jpeg;base64, ${event.getImageBase64()}" alt="event-banner"/>
            </div>
            <div class="event-information">
                <div class="category-link">
                    категория: <a href="${contextPath}/">#Тренинги</a>
                    <!--TODO : ADD TYPE OF EVENT -->
                </div>
            </div>
            <div class="event-information">
                <div class="icons">
                    <img src="${contextPath}/resources/img/calendar-icon.png" alt="calendar-icon">
                </div>
                <span>${event.start.toString().substring(8,10)} ${month.toString()}</span>
            </div>
            <div class="event-information">
                <div class="icons">
                    <img src="${contextPath}/resources/img/clock-icon.png" alt="clock-icon">
                </div>
                <span>${event.start.toString().substring(11)}-${event.end.toString().substring(11)}</span>
            </div>
            <div class="event-information">
                <div class="icons">
                    <img src="${contextPath}/resources/img/pin-icon.png" alt="pin-icon">
                </div>
                <span>${event.location}</span>
            </div>
            <div class="event-information event-share" onmousedown="return false" onselectstart="return false">
                <div class="icons">
                    <img src="${contextPath}/resources/img/share-icon-black.png" alt="share-icon">
                </div>
                <span>Поделиться</span>
                <div class="event-share-toggle">
                    <div class="share-links">
                        <a href="#"><img src="${contextPath}/resources/img/facebook-modal-blue-icon.png" alt="facebook-icon"></a>
                    </div>
                    <div class="share-links">
                        <a href="#"><img src="${contextPath}/resources/img/vk-modal-icon.png" alt="facebook-icon"></a>
                    </div>
                    <div class="share-links">
                        <a href="#"><img src="${contextPath}/resources/img/twitter-modal-icon.png" alt="facebook-icon"></a>
                    </div>
                    <div class="share-links">
                        <a href="#"><img src="${contextPath}/resources/img/instagram-modal-icon.png" alt="facebook-icon"></a>
                    </div>
                    <div class="share-links">
                        <a href="#"><img src="${contextPath}/resources/img/telegram-modal-icon.png" alt="facebook-icon"></a>
                    </div>
                </div>
            </div>
            <div class="line-description">
                Описание
            </div> <!-- line-description -->
            <div class="event-description">
                <p>${event.description}</p>
            </div> <!-- event-description -->
        </div> <!-- event-page -->
        <div class="complain-content">
            <div class="reasons-list-block">
                <span>указать причину блокировки события:</span>
                <label class="reasons-list-item">
                    <input type="radio" aria-checked="false" name="reason-checked">
                    Cобытые уже было опубликовано
                </label>
                <label class="reasons-list-item">
                    <input type="radio" aria-checked="false" name="reason-checked">
                    Оскорбление
                </label>
                <label class="reasons-list-item">
                    <input type="radio" aria-checked="false" name="reason-checked">
                    Пропаганда наркотиков
                </label>
                <label class="reasons-list-item">
                    <input type="radio" aria-checked="false" name="reason-checked">
                    Насилие / экстремизм
                </label>
                <label class="reasons-list-item">
                    <input type="radio" aria-checked="false" name="reason-checked">
                    Призыв к суициду
                </label>
            </div>
            <div class="reason-result">
                <span>ваша жалоба будет рассмотрена модераторами.</span>
                <a href="${contextPath}/" class="homepage-link">вернуться на главную</a>
            </div> <!-- reason-result -->
        </div> <!-- complain-content -->
    </div> <!-- event-page-block -->
    <div class="footer-dark">
        <div class="footer-dark-wrapper">
            <div class="logo-footer">
                <div class="logo-light-footer">
                    <a href="${contextPath}/"><img src="${contextPath}/resources/img/footer-white-friday-logo.png" alt="logo-bottom"></a>
                </div>
            </div>
            <div class="social-links-footer">
                <a href="#" class="social-link"><img src="${contextPath}/resources/img/instagram.png" alt="instagram-i"></a>
                <a href="#" class="social-link"><img src="${contextPath}/resources/img/facebook.png" alt="facebook-i"></a>
                <a href="#" class="social-link"><img src="${contextPath}/resources/img/vk.png" alt="vk-i"></a>
            </div>
            <div class="footer-nav">
                <a href="#" class="footer-nav-links nav-hover">о проекте</a>
                <a href="#" class="footer-nav-links nav-hover">контакты</a>
                <a href="#" class="footer-nav-links nav-hover">правила</a>
            </div>
        </div>
    </div> <!-- footer-dark -->
    <div class="footer-lighten">
        &#169; 2018 Friday. All right reserved.
    </div> <!-- footer-lighten -->
</div> <!-- wrapper -->
<script src="${contextPath}/resources/js/libs.min.js"></script>
<script src="${contextPath}/resources/js/common.js"></script>
</body>
</html>
