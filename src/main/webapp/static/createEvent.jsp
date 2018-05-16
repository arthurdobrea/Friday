<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            <a href="${contextPath}/" class="friday-logo"><img src="${contextPath}/resources/img/friday-logo.png"
                                                          alt="friday-logo"></a>
        </div> <!-- white-banner-wrapper -->
    </div> <!-- white-banner -->
    <div class="page-title">
        <p class="page-title-p">Добавление события</p>
    </div> <!-- page-title -->
    <form:form modelAttribute="eventDto" action="${contextPath}/event/create" method="post"
               enctype="multipart/form-data">
    <div class="input-event-information-block">
        <div class="event-picture block-style">
            <div class="input-title">баннер вашего события</div>
            <div class="image-box">
                <div class="add-image-label">
                    <div class="photo-icon">
                        <img class="photo-icon" src="${contextPath}/resources/img/photo-camera-icon.png" alt="">
                    </div>
                    <span class="upload-item">загрузить фото</span>
                    <div class="picture-upload-btn">
                        <form:input type="file" path="image" name="image" accept="image" class="upload-img-input"/>
                    </div>
                </div> <!-- add-image-label -->
                <div class="after-upload-label" title="Удалить фото">
                    <div class="icon-delete">
                        <img src="${contextPath}/resources/img/delete-icon.png" alt="icon-delete">
                    </div>
                </div> <!-- after-upload-label -->
            </div>
        </div> <!-- input-event-picture -->
        <div class="input-event-title block-style">
            <div class="input-title">название события</div>
            <div class="input-event-information">
                <form:input name="title" path="title" type="text" class="input-style"
                            placeholder="Введите название вашего события" maxlength="64"/>
                <form:errors path="title"/>
            </div>
        </div> <!-- input-event-title -->
        <div class="input-event-place block-style">
            <div class="input-title">место проведения</div>
            <div class="input-event-information">
                <form:input name="location" path="location" class="input-style"
                            placeholder="Введите адрес и название места где будет ваше событие"/>
                <form:errors path="location"/>
            </div>
        </div> <!-- input-event-place -->
        <div class="select-event-category block-style">
            <div class="input-title">категория</div>
            <div class="input-event-information">
                <form:select name="eventType" path="eventType" class="input-style select-style">
                    <c:forEach items="${eventTypes}" var="et">
                        <option value=${et}>${et.view()}</option>
                    </c:forEach>
                </form:select>
                <form:errors path="eventType"/>
            </div>
        </div> <!-- select-event-category -->
        <div class="input-event-beginning block-style">
            <div style="color: red;width: 502px;">
                <form:errors path="startDate"/>
                <form:errors path="startTime"/>
            </div>
            <div class="input-title">начало</div>
            <div class="input-event-information">
                <form:input name="startDate" path="startDate" type='text' class="input-begining-date"
                            placeholder="Дата"/>
                <form:input name="startTime" path="startTime" type="text" class="input-begining-time"
                            placeholder="Время"/>
            </div>
        </div> <!-- input-event-beginning -->
        <div class="input-event-end block-style">
            <div style="color: red;width: 502px;">
                <form:errors path="endDate"/>
                <form:errors path="endTime"/>
            </div>
            <div class="input-title">завершение</div>
            <div class="input-event-information">
                <form:input name="endDate" path="endDate" type='text' class="input-begining-date" placeholder="Дата"/>
                <form:input name="endTime" path="endTime" type="text" class="input-begining-time" placeholder="Время"/>
            </div>
        </div> <!-- input-event-end -->
        <div class="field-event-description block-style">
            <div class="input-title">описание</div>
            <div class="input-event-information">
                <form:textarea name="description" path="description" class="input-style textarea-style"
                               placeholder="Опишите что будет ждать гостей"/>
            </div>
        </div> <!-- input-event-end -->
        <div class="agree-with-rules-item">
            <input type="checkbox" name="agree-rules" id="agree-rules-checkbox">
            <label for="agree-rules-checkbox">я согласен с <a href="#">правилами</a> friday.md</label>
        </div>
        <a href="#" class="btn-link-send">
            <button class="modal-send-button" type="submit">отправить</button>
        </a>
        </form:form>
        <span class="error-empty-fields">* Не заполнены некоторые поля.</span>
    </div> <!-- input-event-information-block -->
    <div class="footer-dark">
        <div class="footer-dark-wrapper">
            <div class="logo-footer">
                <div class="logo-light-footer">
                    <a href="${contextPath}/"><img src="${contextPath}/resources/img/footer-white-friday-logo.png"
                                                   alt="logo-bottom"></a>
                </div>
            </div>
            <div class="social-links-footer">
                <a href="#" class="social-link"><img src="${contextPath}/resources/img/instagram.png" alt="instagram-i"></a>
                <a href="#" class="social-link"><img src="${contextPath}/resources/img/facebook.png"
                                                     alt="facebook-i"></a>
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
