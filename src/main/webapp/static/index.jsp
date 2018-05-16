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
    <!-- Стандартная иконка -->
    <link rel="icon" type="image/x-icon" href=".${contextPath}/resources/img/favicon/favicon.png">
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
    <div class="top-black-nav">
        <div class="top-black-nav-wrapper">
            <div class="languages">
                <a href="#" class="languages-wrapper nav-hover" id="language-ru">ru</a>
                <a href="#" class="languages-wrapper nav-hover" id="language-md">md</a>
                <a href="#" class="languages-wrapper nav-hover" id="language-en">en</a>
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
                        <input type="text" placeholder="username">
                        <input type="password" placeholder="пароль">
                    </div>
                    <span class="error-wrong-pass-or-login">неверный email или пароль.</span>
                    <div class="checkbox-remember-me">
                        <input type="checkbox" id="remember-me"><label for="remember-me">запомнить меня.</label>
                    </div>
                    <a href="#" class="btn-link-send">
                        <button class="modal-send-button" type="submit">отправить</button>
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
            <a href="${contextPath}/" class="friday-logo"><img src="${contextPath}/resources/img/friday-logo.png"
                                                               alt="friday-logo"></a>
        </div> <!-- white-banner-wrapper -->
    </div> <!-- white-banner -->
    <div class="page-title">
        <p class="page-title-p">события</p>
    </div> <!-- page-title -->
    <div class="block-event-group">
        <div class="top-event-group">
            <a href="${contextPath}/" class="event-group-title event-group-title-active">#Все</a>
            <a href="${contextPath}/event/filter?tag=master" class="event-group-title">#МастерКлассы</a>
            <a href="${contextPath}/event/filter?tag=movie" class="event-group-title">#Кино</a>
            <a href="${contextPath}/event/filter?tag=party" class="event-group-title">#Вечеринки</a>
            <a href="${contextPath}/event/filter?tag=other" class="event-group-title">#Разное</a>
            <a href="${contextPath}/event/filter?tag=music" class="event-group-title">#Концерты</a>
        </div>
        <div class="bottom-event-group">
            <a href="${contextPath}/event/filter?tag=show" class="event-group-title">#Выставки</a>
            <a href="${contextPath}/event/filter?tag=theater" class="event-group-title">#Спектакли</a>
            <a href="${contextPath}/event/filter?tag=training" class="event-group-title">#Тренинги</a>
            <a href="${contextPath}/event/filter?tag=rap" class="event-group-title">#РэпБатлы</a>
            <a href="${contextPath}/event/filter?tag=boardGames" class="event-group-title">#НастольныеИгры</a>
        </div>
    </div> <!-- block-event-group -->
    <div class="event-calendar-block">
        <div class="event-calendar-block-wrapper">
            <div class="calendarpicker"></div>
        </div>
    </div> <!-- event-calendar-block -->
    <div class="search-block">
        <form:form class="form-search" action="${contextPath}/search" method="post">
            <input class="input-search" type="text" placeholder="Пойск по названию.." name="keyword" autocomplete="off">
            <input type="submit">
        </form:form>
    </div> <!-- search-block -->
    <div class="event-main-block">
        <c:forEach items="${allEvents}" var="et">
            <div class="event-content-block">
                <div class="event-banner">
                    <a href="${contextPath}/event/${et.id}"><img src="data:image/jpeg;base64, ${et.getImageBase64()}"
                                                                 alt="event-banner"></a>
                </div>
                <div class="event-day">10<span>пн</span></div>
                <div class="event-title"><a href="${contextPath}/resources/index-event-page.html"><p
                        id="myTitle">${et.title}</p></a></div>
                <div class="event-date-information">
                    <p class="event-date" id="myTime">${et.start.toString().substring(11)}</p><span></span>
                    <p class="event-place" id="myPlace">${et.location}</p><span></span>
                    <p class="event-city">Кишинёв</p>
                </div>
                <div class="event-mini-information">
                    <p>${et.description}</p>
                </div>
                <div class="event-sponsor">
                    <div class="event-user-avatar">
                        <img src="${contextPath}/resources/img/user-avatar-1.png" alt="user-avatar">
                    </div>
                    <div class="event-sponsor-name">
                        организатор
                        <a href="${contextPath}/event/user/${et.author.username}"><p>${et.author.username}</p></a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div> <!-- event-block -->
</div> <!-- wrapper -->
</body>
<script src="${contextPath}/resources/js/libs.min.js"></script>
<script src="${contextPath}/resources/js/common.js"></script>
<script src="${contextPath}/resources/js/stomp.js"></script>
<script src="${contextPath}/resources/js/sockjs-0.3.4.min.js"></script>
<script src="${contextPath}/resources/js/connectToServer.js"></script>
<script src="${contextPath}/resources/js/fridaycalendar.js"></script>
<script>
    connectToServer()
</script>
</html>