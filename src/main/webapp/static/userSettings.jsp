<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Настройки аккаунта</title>
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
            <div class="user-profile">
                <div class="user-profile-wrapper" onmousedown="return false" onselectstart="return false">
                    <div class="arrow-down-top-menu">
                        <img src="${contextPath}/resources/img/arrow-down-icon.png" alt="arrow-down">
                    </div>
                    <div class="user-top-avatar">
                        <img src="${contextPath}/resources/img/user-avatar-1.png" alt="user-avatar">
                    </div>
                    <div class="user-name-top-menu">
                        <p>${user.username}</p>
                    </div>
                    <div class="top-menu-list">
                        <a href="${contextPath}/event/user/${pageContext.request.userPrincipal.name}">мои события</a>
                        <a href="${contextPath}/user/${pageContext.request.userPrincipal.name}">настройки</a>
                        <div class="top-profile-sep"></div>
                        <a href="#">выйти</a>
                    </div>
                </div>
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
        <p class="page-title-p">настройки аккаунта</p>
    </div> <!-- page-title -->
    <div class="account-settings-block">
        <div class="tab-nav">
            <button class="setting-link tab-link" id="defaultSetting"
                    onclick="openSetting(this, '.setting-user-information')">редактировать профиль
            </button>
            <button class="setting-link tab-link" onclick="openSetting(this, '.setting-user-auth')">изменить email и
                пароль
            </button>
        </div>
        <div class="settings-content">
            <%--<form:form modelAttribute="userDto" action="${contextPath}/update" method="post"--%>
                       <%--enctype="multipart/form-data">--%>
                <div class="setting-user-information tab-content">
                    <div class="setting-line">
                        <div class="input-title">фото</div>
                        <div class="input-user-avatar-wrapper">
                            <div class="input-user-avatar" title="Загрузить фото профиля">
                                <div class="hover-bg">
                                    <%--<form:input type="file" path="image" name="image" accept="image"--%>
                                                <%--class="upload-avatar"--%>
                                                <%--src="img/photo-camera-icon.png" alt="pic-upload-icon"/>--%>
                                    <div class="hover-label">
                                        <img src="${contextPath}/resources/img/photo-camera-icon.png" alt="pic-upload-icon">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="setting-line">
                        <div class="input-title">имя</div>
                        <div class="input-information">
                            <%--<form:input name="firstName" path="firstName" type="text" class="input-style"--%>
                                        <%--placeholder="Введите ваше имя"/>--%>
                        </div>
                    </div>
                    <div class="setting-line">
                        <div class="input-title">фамилия</div>
                        <div class="input-information">
                            <%--<form:input name="lastName" path="lastName" type="text" class="input-style"--%>
                                        <%--placeholder="Введите вашу фамилию"/>--%>
                        </div>
                    </div>
                    <div class="setting-line">
                        <div class="input-title">описание</div>
                        <div class="input-information">
                            <%--<form:input name="description" path="description" class="input-style textarea-style"--%>
                                        <%--placeholder="Опишите чем вы занимаетесь"/>--%>
                        </div>
                    </div>
                </div>
            <%--</form:form>--%>
                <!-- setting-user-information -->

            <div class="setting-user-auth tab-content">
                <div class="setting-line">
                    <div class="input-title">логин</div>
                    <div class="input-information">
                        <input type="text" class="input-style" placeholder="Введите ваш логин">
                    </div>
                </div>
                <div class="setting-line">
                    <div class="input-title">email</div>
                    <div class="input-information">
                        <input type="email" class="input-style" placeholder="Введите ваш email">
                    </div>
                </div>
                <div class="setting-line">
                    <div class="input-title">пароль</div>
                    <div class="input-information">
                        <input type="password" class="input-style" placeholder="Введите ваш пароль">
                    </div>
                </div>
                <div class="setting-line">
                    <div class="input-title">подтвердите новый пароль</div>
                    <div class="input-information">
                        <input type="password" class="input-style" placeholder="Введите ваш пароль ещё раз">
                    </div>
                </div>
            </div> <!-- setting-user-auth -->
            <div class="btns-bottom">
                <button class="btn-save">
                    сохранить
                </button>
                <button class="btn-cancel">
                    отмена
                </button>
            </div>
        </div> <!-- settings-block -->
    </div> <!-- account-settings-block -->
    <div class="footer-dark">
        <div class="footer-dark-wrapper">
            <div class="logo-footer">
                <div class="logo-light-footer">
                    <a href="index.html"><img src="${contextPath}/resources/img/footer-white-friday-logo.png"
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
<script>
    $.uploadPreview({
        main_box: ".input-user-avatar-wrapper",
        input_field: ".upload-avatar",
        preview_box: ".input-user-avatar"
    });

    document.getElementById("defaultSetting").click();
</script>
</body>
</html>
