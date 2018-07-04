<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Friday.md | Пойск событий</title>
    <meta name="description" content="thx god it's friday">
    <meta mame="author" content="SRL FRIDAY">
    <link rel="stylesheet" href="${contextPath}/resources/css/main.css">
    <!-- Default Icon -->
    <link rel="icon" type="image/x-icon" href=".${contextPath}/resources/img/favicon/favicon.png">
    <!-- Recommended Icon -->
    <link rel="icon" type="image/png" href="${contextPath}/resources/img/favicon/apple-touch-icon-114x114.png">
    <!-- Apple Icon -->
    <link rel="apple-touch-icon" href="${contextPath}/resources/img/favicon/apple-touch-icon-114x114.png">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=PT+Serif:400,400i,700,700i&amp;subset=cyrillic"
          rel="stylesheet">
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
                                <img src="data:image/jpeg;base64,${image}" alt="user-avatar">
                            </div>
                            <div class="user-name-top-menu">
                                <p>${pageContext.request.userPrincipal.name}</p>
                            </div>
                            <div class="top-menu-list">
                                <a href="${contextPath}/user/${pageContext.request.userPrincipal.name}">мой аккаунт</a>
                                <a href="${contextPath}/userSetting/${pageContext.request.userPrincipal.name}">настройки</a>
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
                    <a href="${contextPath}/login" class="account-link auth-link nav-hover">Войти</a>
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
                    <form:form method="POST" modelAttribute="userForm" action="${contextPath}/registration">
                        <div class="modal-input-fields">
                            <input type="email" placeholder="email">
                            <form:input type="text" path="username"  placeholder="логин" autofocus="true"/>
                            <form:errors path="username"/>
                            <form:input type="password" path="password"  placeholder="Password"/>
                            <form:errors path="password"/>
                            <form:input type="password" path="confirmPassword" placeholder="Confirm your password"/>
                            <form:errors path="confirmPassword"/>
                        </div>
                        <span class="error-bottom">логин уже занят.</span> <!-- email уже зарегестрирован. --> <!-- пароль слишком короткий. -->
                        <button class="modal-send-button" onmousedown="return false" onselectstart="return false">отправить</button>
                    </form:form>
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
    <div class="page-title"><p class="page-title-p">события</p></div> <!-- page-title -->
    <div class="block-event-group">
        <div class="block-event-group-wrapper">
            <div class="sticky-logo"></div>
            <div class="event-group-carousel">
                <div class="event-group-list owl-carousel owl-theme">
                    <div class="event-group-item event-group-item-active"><a href="${contextPath}/">#Все</a></div>
                    <div class="event-group-item"><a href="${contextPath}/event/filter?tag=music">#Концерты</a></div>
                    <div class="event-group-item"><a href="${contextPath}/event/filter?tag=movie">#Кино</a></div>
                    <div class="event-group-item"><a href="${contextPath}/event/filter?tag=party">#Вечеринки</a></div>
                    <div class="event-group-item"><a href="${contextPath}/event/filter?tag=theater">#Спектакли</a></div>
                    <div class="event-group-item"><a href="${contextPath}/">#Для детей</a></div>
                    <div class="event-group-item"><a href="${contextPath}/event/filter?tag=show">#Выставки</a></div>
                    <div class="event-group-item"><a href="${contextPath}/event/filter?tag=master">#Мастер классы</a></div>
                    <div class="event-group-item"><a href="${contextPath}/event/filter?tag=boardGames">#Настольные игры</a></div>
                    <div class="event-group-item"><a href="${contextPath}/event/filter?tag=training">#Тренинги</a></div>
                    <div class="event-group-item"><a href="${contextPath}/event/filter?tag=rap">#РэпБатлы</a></div>
                    <div class="event-group-item"><a href="${contextPath}/event/filter?tag=other">#Разное</a></div>
                </div>
            </div>
        </div>
    </div> <!-- block-event-group -->
    <div class="event-calendar-block">
        <div class="event-calendar-block-wrapper">
            <div class="calendarpicker"></div>
        </div>
    </div> <!-- event-calendar-block -->
    <div class="search-block">
        <form:form class="form-search" action="${contextPath}/search" method="post">
            <input autofocus class="input-search" type="text" placeholder="Пойск по названию.." name="keyword" autocomplete="off">
            <button class="submit-search-btn" type="submit"><img src="${contextPath}/resources/img/search-icon.png" alt="search-icon"></button>
        </form:form>
    </div> <!-- search-block -->
    <div class="event-main-block">
        <div id="fri-loader"></div>
    </div> <!-- event-block -->
</div> <!-- wrapper -->
</body>
    <script src="${contextPath}/resources/js/libs.min.js"></script>
    <script src="${contextPath}/resources/js/common.js"></script>
    <script src="${contextPath}/resources/js/stomp.js"></script>
    <script src="${contextPath}/resources/js/connectToServer.js"></script>
    <script src="${contextPath}/resources/js/sockjs-0.3.4.min.js"></script>
    <script src="${contextPath}/resources/js/fridaycalendar.js"></script>
<script>
    $(document).ready(function(){
        $('.event-group-list').owlCarousel({
            autoWidth: true,
            dots: false,
            nav: true,
            navText: ["<img style='width: 25px' src='${contextPath}/resources/img/arrow-prev-black-icon.png'>","<img style='width: 25px' src='${contextPath}/resources/img/arrow-next-black-icon.png'>"],
            rewind: false
        });
    });
    connectToServer();
</script>
</html>