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
    <link rel="icon" type="image/x-icon" href="${contextPath}/resources/img/favicon/favicon.png">
    <link rel="icon" type="image/png" href="${contextPath}/resources/img/favicon/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" href="${contextPath}/resources/img/favicon/apple-touch-icon-114x114.png">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=PT+Serif:400,400i,700,700i&amp;subset=cyrillic" rel="stylesheet">
</head>
<body>
<div class="wrapper">
    <div class="top-black-nav">
        <div class="top-black-nav-wrapper">
            <div class="languages">
                <a href="#" class="languages-wrapper nav-hover active-lang" id="language-ru" title="Русский">ru</a>
                <a href="#" class="languages-wrapper nav-hover" id="language-md" title="Молдавский">md</a>
                <a href="#" class="languages-wrapper nav-hover" id="language-en" title="Английский">en</a>
            </div>
            <div class="social-links-nav">
                <a href="#" class="social-link"><img src="${contextPath}/resources/img/instagram.png"
                                                     alt="instagram"></a>
                <a href="#" class="social-link"><img src="${contextPath}/resources/img/facebook.png"
                                                     alt="instagram"></a>
                <a href="#" class="social-link"><img src="${contextPath}/resources/img/vk.png" alt="instagram"></a>
            </div>
            <div class="nav-btn">
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <div class="panel-body" id="response"></div>
                    <div class="user-profile">
                        <div class="user-profile-wrapper" onclick="showContent('.user-profile-wrapper', '.top-menu-list');" onmousedown="return false" onselectstart="return false">
                            <div class="arrow-down-top-menu">
                                <img src="${contextPath}/resources/img/arrow-down-icon.png" alt="arrow-down">
                            </div>
                            <div class="user-top-avatar">
                                <img src="${contextPath}/resources/img/user-avatar-default.png" alt="user-avatar">
                            </div>
                            <div class="user-name-top-menu">
                                <p>${pageContext.request.userPrincipal.name}</p>
                            </div>
                            <div class="top-menu-list">
                                <a href="${contextPath}/event/user/${pageContext.request.userPrincipal.name}">мой аккаунт</a>
                                <a href="${contextPath}/user/${pageContext.request.userPrincipal.name}">настройки</a>
                                <div class="sep-item">
                                    <div class="line"></div>
                                </div>
                                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                </form>
                                <a onclick="document.forms['logoutForm'].submit()">выйти</a>
                            </div>
                        </div>
                        <div class="notification-bell-nav" onclick="showContent('.notification-bell-nav', '.top-notify-content');" title="Уведомления" onmousedown="return false" onselectstart="return false">
                            <div class="notification-btn">
                                <img src="${contextPath}/resources/img/notify-bell.png" alt="notify-btn">
                            </div>
                            <div class="top-notify-content">
                                <div class="top-notify-header">
                                    <span>уведомления о событиях</span>
                                    <a href="#">настройки</a>
                                </div>
                                <div class="notify-block">

                                </div>
                                <div class="bottom-notify-footer">
                                    <a href="#">показать все</a>
                                </div>
                            </div> <!-- top-notify-content -->
                        </div>
                    </div>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name == null}">
                    <a href="javascript:void(0)" class="account-link reg-link nav-hover" onclick="showModalContent('.reg-link', '.overlay-lighten-dialog-reg', '.close-modal');">Регистрация</a>
                    <a href="javascript:void(0)" class="account-link auth-link nav-hover" onclick="showModalContent('.auth-link', '.overlay-lighten-dialog-auth', '#close-modal-auth');">Войти</a>
                </c:if>
            </div>
        </div>
    </div> <!-- top-black-nav -->
    <div class="overlay-darken">
        <div class="overlay-dialog">
            <div class="overlay-darken-logo">
                <div class="lighten-modal-logo">
                    <img src="${contextPath}/resources/img/white-friday-logo.png" alt="friday-logo">
                </div>
            </div> <!-- overlay-darken-logo -->
            <div class="overlay-lighten-dialog-reg">
                <div class="overlay-scf-reg">
                    проверьте ваш Email для подтверждения.
                </div>
                <button class="close-modal"><img src="${contextPath}/resources/img/close-icon.png" alt="close-modal-icon"></button>
                <div class="overlay-content">
                    <h1>регистрация</h1>
                    <a href="#" class="social-btn social-btn-top">
                        <div class="modal-social-icon">
                            <img src="${contextPath}/resources/img/facebook-modal-icon.png" alt="modal-facebook-icon">
                        </div>
                        <span class="text-white">facebook</span>
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
                        <span class="error-bottom">логин уже занят.</span> <!-- email уже зарегестрирован. --> <!-- пароль слишком короткий. -->
                        <button class="modal-send-button" onmousedown="return false" onselectstart="return false">отправить</button>
                    </form>
                    <a href="#" class="link-to-rules">правила портала.</a>
                </div>
            </div> <!-- overlay-lighten-dialog-reg -->
            <div class="overlay-lighten-dialog-auth">
                <div class="overlay-scf-sending">
                    на ваш Email отправлена ссылка для подтверждения аккаунта.
                </div>
                <button class="close-modal" id="close-modal-auth"><img src="${contextPath}/resources/img/close-icon.png" alt="close-modal-icon"></button>
                <div class="overlay-content">
                    <h1>войти</h1>
                    <a href="#" class="social-btn social-btn-top">
                        <div class="modal-social-icon">
                            <img src="${contextPath}/resources/img/facebook-modal-icon.png" alt="modal-facebook-icon">
                        </div>
                        <span class="text-white">facebook</span>
                    </a>
                    <a href="#" class="social-btn social-btn-bottom">
                        <div class="modal-social-icon">
                            <img src="${contextPath}/resources/img/vk-modal-icon.png" alt="modal-vk-icon">
                        </div>
                        <span>vkontakte</span>
                    </a>
                    <div class="overlay-frg-pas">
                        <span class="title-enter-email">введите ваш Email</span>
                        <input type="email" placeholder="email">
                        <a href="#" class="link-return-back"><div class="icon-left-arrow"><img src="img/left-arrow.png" alt="left-arrow"></div>Вернуться к началу.</a>
                        <button class="modal-send-button" onmousedown="return false" onselectstart="return false">отправить</button>
                    </div> <!-- overlay-frg-pas -->
                    <form method="POST" action="${contextPath}/login">
                        <div class="modal-input-fields">
                            <input type="email" placeholder="email">
                            <input type="password" placeholder="пароль">
                            <span class="error-wrong-pass-or-login">неверный email или пароль.</span>
                            <label class="checkbox-bottom" onmousedown="return false" onselectstart="return false">
                                Запомнить меня
                                <input type="checkbox" name="agree-rules" id="agree-rules-checkbox">
                                <span class="checkmark"></span>
                            </label> <!-- checkbox-bottom -->
                            <button class="modal-send-button" onmousedown="return false" onselectstart="return false">отправить</button>
                        </div> <!-- modal-input-fields -->
                    </form>
                </div>
            </div> <!-- overlay-lighten-dialog-auth -->
        </div> <!-- overlay-dialog -->
    </div> <!-- overlay-darken -->
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
                        <p class="chat-username">${event.title}</p>
                        <p class="chat-message">
                            Добро пожаловать!
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
                    <span>подписаться 128 МЛН</span>
                    <a href="#"><p>${event.title}</p></a>
                </div>
                <div class="event-more-options-icon" onclick="showContent('.event-more-options-icon','.event-option-menu');">
                    <img src="${contextPath}/resources/img/more-options-icon.png" alt="more-option-icon">
                </div>
                <div class="event-option-menu">
                    <a href="#">Редактировать событие</a>
                    <div class="sep-item">
                        <div class="line"></div>
                    </div>
                    <a href="#">Удалить событие</a>
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
            <div class="event-information event-share" onclick="showContent('.event-share', '.event-share-toggle');" onmousedown="return false" onselectstart="return false">
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
                <label class="radio-bottom" onmousedown="return false" onselectstart="return false">
                    Cобытые уже было опубликовано
                    <input type="radio" aria-checked="false" name="reason-checked">
                    <span class="checkmark"></span>
                </label> <!-- radio-bottom -->
                <label class="radio-bottom" onmousedown="return false" onselectstart="return false">
                    Оскорбление
                    <input type="radio" aria-checked="false" name="reason-checked">
                    <span class="checkmark"></span>
                </label> <!-- radio-bottom -->
                <label class="radio-bottom" onmousedown="return false" onselectstart="return false">
                    Пропаганда наркотиков
                    <input type="radio" aria-checked="false" name="reason-checked">
                    <span class="checkmark"></span>
                </label> <!-- radio-bottom -->
                <label class="radio-bottom" onmousedown="return false" onselectstart="return false">
                    Насилие / экстремизм
                    <input type="radio" aria-checked="false" name="reason-checked">
                    <span class="checkmark"></span>
                </label> <!-- radio-bottom -->
                <label class="radio-bottom" onmousedown="return false" onselectstart="return false">
                    Призыв к суициду
                    <input type="radio" aria-checked="false" name="reason-checked">
                    <span class="checkmark"></span>
                </label> <!-- radio-bottom -->
            </div>
            <div class="reason-result">
                <span>ваша жалоба будет рассмотрена модераторами.</span>
                <a href="index.html" class="homepage-link">вернуться на главную</a>
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
