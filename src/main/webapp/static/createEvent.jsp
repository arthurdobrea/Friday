<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: adobrya
  Date: 12/21/2017
  Time: 9:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Friday.md | Добавить событие</title>
    <meta name="description" content="thx god it's friday">
    <meta mame="author" content="SRL FRIDAY">
    <link rel="stylesheet" href="${contextPath}/resources/css/main.css">
    <!-- Стандартная иконка -->
    <link rel="icon" type="image/x-icon" href="https://example.com/favicon.ico">
    <!-- Рекоменндованная иконка -->
    <link rel="icon" type="image/png" href="https://example.com/favicon.png">
    <!-- Иконка Apple -->
    <link rel="apple-touch-icon" href="/custom-icon.png">
    <!-- Facebook card -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://example.com/page.html">
    <meta property="og:title" content="Content Title">
    <meta property="og:image" content="https://example.com/image.jpg">
    <meta property="og:description" content="Description Here">
    <meta property="og:site_name" content="Site Name">
    <meta property="og:locale" content="en_US">
    <!-- Twitter card -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@site_account">
    <meta name="twitter:creator" content="@individual_account">
    <meta name="twitter:url" content="https://example.com/page.html">
    <meta name="twitter:title" content="Content Title">
    <meta name="twitter:description" content="Content description less than 200 characters">
    <meta name="twitter:image" content="https://example.com/image.jpg">
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;subset=cyrillic" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=PT+Serif:400,400i,700,700i&amp;subset=cyrillic" rel="stylesheet">
    <!--[if IE 9]>
    <link rel="stylesheet" type="text/css" href="https://npmcdn.com/flatpickr/dist/ie.css">
    <![endif]-->
    <!-- bootstrap 3.3.7 -->
    <style>
        html{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}body{margin:0}article,aside,details,figcaption,figure,footer,header,hgroup,main,menu,nav,section,summary{display:block}audio,canvas,progress,video{display:inline-block;vertical-align:baseline}audio:not([controls]){display:none;height:0}[hidden],template{display:none}a{background-color:transparent}a:active,a:hover{outline:0}abbr[title]{border-bottom:1px dotted}b,strong{font-weight:bold}dfn{font-style:italic}h1{font-size:2em;margin:0.67em 0}mark{background:#ff0;color:#000}small{font-size:80%}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}sup{top:-0.5em}sub{bottom:-0.25em}img{border:0}svg:not(:root){overflow:hidden}figure{margin:1em 40px}hr{-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;height:0}pre{overflow:auto}code,kbd,pre,samp{font-family:monospace, monospace;font-size:1em}button,input,optgroup,select,textarea{color:inherit;font:inherit;margin:0}button{overflow:visible}button,select{text-transform:none}button,html input[type="button"],input[type="reset"],input[type="submit"]{-webkit-appearance:button;cursor:pointer}button[disabled],html input[disabled]{cursor:default}button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0}input{line-height:normal}input[type="checkbox"],input[type="radio"]{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;padding:0}input[type="number"]::-webkit-inner-spin-button,input[type="number"]::-webkit-outer-spin-button{height:auto}input[type="search"]{-webkit-appearance:textfield;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box}input[type="search"]::-webkit-search-cancel-button,input[type="search"]::-webkit-search-decoration{-webkit-appearance:none}fieldset{border:1px solid #c0c0c0;margin:0 2px;padding:0.35em 0.625em 0.75em}legend{border:0;padding:0}textarea{overflow:auto}optgroup{font-weight:bold}table{border-collapse:collapse;border-spacing:0}td,th{padding:0}*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*:before,*:after{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}html{font-size:10px;-webkit-tap-highlight-color:rgba(0,0,0,0)}body{font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-size:14px;line-height:1.42857143;color:#333;background-color:#fff}input,button,select,textarea{font-family:inherit;font-size:inherit;line-height:inherit}a{color:#337ab7;text-decoration:none}a:hover,a:focus{color:#23527c;text-decoration:underline}a:focus{outline:5px auto -webkit-focus-ring-color;outline-offset:-2px}figure{margin:0}img{vertical-align:middle}.img-responsive{display:block;max-width:100%;height:auto}.img-rounded{border-radius:6px}.img-thumbnail{padding:4px;line-height:1.42857143;background-color:#fff;border:1px solid #ddd;border-radius:4px;-webkit-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out;transition:all .2s ease-in-out;display:inline-block;max-width:100%;height:auto}.img-circle{border-radius:50%}hr{margin-top:20px;margin-bottom:20px;border:0;border-top:1px solid #eee}.sr-only{position:absolute;width:1px;height:1px;margin:-1px;padding:0;overflow:hidden;clip:rect(0, 0, 0, 0);border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;margin:0;overflow:visible;clip:auto}[role="button"]{cursor:pointer}.container{margin-right:auto;margin-left:auto;padding-left:15px;padding-right:15px}@media (min-width:768px){.container{width:750px}}@media (min-width:992px){.container{width:970px}}@media (min-width:1200px){.container{width:1170px}}.container-fluid{margin-right:auto;margin-left:auto;padding-left:15px;padding-right:15px}.row{margin-left:-15px;margin-right:-15px}.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12{position:relative;min-height:1px;padding-left:15px;padding-right:15px}.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12{float:left}.col-xs-12{width:100%}.col-xs-11{width:91.66666667%}.col-xs-10{width:83.33333333%}.col-xs-9{width:75%}.col-xs-8{width:66.66666667%}.col-xs-7{width:58.33333333%}.col-xs-6{width:50%}.col-xs-5{width:41.66666667%}.col-xs-4{width:33.33333333%}.col-xs-3{width:25%}.col-xs-2{width:16.66666667%}.col-xs-1{width:8.33333333%}.col-xs-pull-12{right:100%}.col-xs-pull-11{right:91.66666667%}.col-xs-pull-10{right:83.33333333%}.col-xs-pull-9{right:75%}.col-xs-pull-8{right:66.66666667%}.col-xs-pull-7{right:58.33333333%}.col-xs-pull-6{right:50%}.col-xs-pull-5{right:41.66666667%}.col-xs-pull-4{right:33.33333333%}.col-xs-pull-3{right:25%}.col-xs-pull-2{right:16.66666667%}.col-xs-pull-1{right:8.33333333%}.col-xs-pull-0{right:auto}.col-xs-push-12{left:100%}.col-xs-push-11{left:91.66666667%}.col-xs-push-10{left:83.33333333%}.col-xs-push-9{left:75%}.col-xs-push-8{left:66.66666667%}.col-xs-push-7{left:58.33333333%}.col-xs-push-6{left:50%}.col-xs-push-5{left:41.66666667%}.col-xs-push-4{left:33.33333333%}.col-xs-push-3{left:25%}.col-xs-push-2{left:16.66666667%}.col-xs-push-1{left:8.33333333%}.col-xs-push-0{left:auto}.col-xs-offset-12{margin-left:100%}.col-xs-offset-11{margin-left:91.66666667%}.col-xs-offset-10{margin-left:83.33333333%}.col-xs-offset-9{margin-left:75%}.col-xs-offset-8{margin-left:66.66666667%}.col-xs-offset-7{margin-left:58.33333333%}.col-xs-offset-6{margin-left:50%}.col-xs-offset-5{margin-left:41.66666667%}.col-xs-offset-4{margin-left:33.33333333%}.col-xs-offset-3{margin-left:25%}.col-xs-offset-2{margin-left:16.66666667%}.col-xs-offset-1{margin-left:8.33333333%}.col-xs-offset-0{margin-left:0}@media (min-width:768px){.col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12{float:left}.col-sm-12{width:100%}.col-sm-11{width:91.66666667%}.col-sm-10{width:83.33333333%}.col-sm-9{width:75%}.col-sm-8{width:66.66666667%}.col-sm-7{width:58.33333333%}.col-sm-6{width:50%}.col-sm-5{width:41.66666667%}.col-sm-4{width:33.33333333%}.col-sm-3{width:25%}.col-sm-2{width:16.66666667%}.col-sm-1{width:8.33333333%}.col-sm-pull-12{right:100%}.col-sm-pull-11{right:91.66666667%}.col-sm-pull-10{right:83.33333333%}.col-sm-pull-9{right:75%}.col-sm-pull-8{right:66.66666667%}.col-sm-pull-7{right:58.33333333%}.col-sm-pull-6{right:50%}.col-sm-pull-5{right:41.66666667%}.col-sm-pull-4{right:33.33333333%}.col-sm-pull-3{right:25%}.col-sm-pull-2{right:16.66666667%}.col-sm-pull-1{right:8.33333333%}.col-sm-pull-0{right:auto}.col-sm-push-12{left:100%}.col-sm-push-11{left:91.66666667%}.col-sm-push-10{left:83.33333333%}.col-sm-push-9{left:75%}.col-sm-push-8{left:66.66666667%}.col-sm-push-7{left:58.33333333%}.col-sm-push-6{left:50%}.col-sm-push-5{left:41.66666667%}.col-sm-push-4{left:33.33333333%}.col-sm-push-3{left:25%}.col-sm-push-2{left:16.66666667%}.col-sm-push-1{left:8.33333333%}.col-sm-push-0{left:auto}.col-sm-offset-12{margin-left:100%}.col-sm-offset-11{margin-left:91.66666667%}.col-sm-offset-10{margin-left:83.33333333%}.col-sm-offset-9{margin-left:75%}.col-sm-offset-8{margin-left:66.66666667%}.col-sm-offset-7{margin-left:58.33333333%}.col-sm-offset-6{margin-left:50%}.col-sm-offset-5{margin-left:41.66666667%}.col-sm-offset-4{margin-left:33.33333333%}.col-sm-offset-3{margin-left:25%}.col-sm-offset-2{margin-left:16.66666667%}.col-sm-offset-1{margin-left:8.33333333%}.col-sm-offset-0{margin-left:0}}@media (min-width:992px){.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12{float:left}.col-md-12{width:100%}.col-md-11{width:91.66666667%}.col-md-10{width:83.33333333%}.col-md-9{width:75%}.col-md-8{width:66.66666667%}.col-md-7{width:58.33333333%}.col-md-6{width:50%}.col-md-5{width:41.66666667%}.col-md-4{width:33.33333333%}.col-md-3{width:25%}.col-md-2{width:16.66666667%}.col-md-1{width:8.33333333%}.col-md-pull-12{right:100%}.col-md-pull-11{right:91.66666667%}.col-md-pull-10{right:83.33333333%}.col-md-pull-9{right:75%}.col-md-pull-8{right:66.66666667%}.col-md-pull-7{right:58.33333333%}.col-md-pull-6{right:50%}.col-md-pull-5{right:41.66666667%}.col-md-pull-4{right:33.33333333%}.col-md-pull-3{right:25%}.col-md-pull-2{right:16.66666667%}.col-md-pull-1{right:8.33333333%}.col-md-pull-0{right:auto}.col-md-push-12{left:100%}.col-md-push-11{left:91.66666667%}.col-md-push-10{left:83.33333333%}.col-md-push-9{left:75%}.col-md-push-8{left:66.66666667%}.col-md-push-7{left:58.33333333%}.col-md-push-6{left:50%}.col-md-push-5{left:41.66666667%}.col-md-push-4{left:33.33333333%}.col-md-push-3{left:25%}.col-md-push-2{left:16.66666667%}.col-md-push-1{left:8.33333333%}.col-md-push-0{left:auto}.col-md-offset-12{margin-left:100%}.col-md-offset-11{margin-left:91.66666667%}.col-md-offset-10{margin-left:83.33333333%}.col-md-offset-9{margin-left:75%}.col-md-offset-8{margin-left:66.66666667%}.col-md-offset-7{margin-left:58.33333333%}.col-md-offset-6{margin-left:50%}.col-md-offset-5{margin-left:41.66666667%}.col-md-offset-4{margin-left:33.33333333%}.col-md-offset-3{margin-left:25%}.col-md-offset-2{margin-left:16.66666667%}.col-md-offset-1{margin-left:8.33333333%}.col-md-offset-0{margin-left:0}}@media (min-width:1200px){.col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12{float:left}.col-lg-12{width:100%}.col-lg-11{width:91.66666667%}.col-lg-10{width:83.33333333%}.col-lg-9{width:75%}.col-lg-8{width:66.66666667%}.col-lg-7{width:58.33333333%}.col-lg-6{width:50%}.col-lg-5{width:41.66666667%}.col-lg-4{width:33.33333333%}.col-lg-3{width:25%}.col-lg-2{width:16.66666667%}.col-lg-1{width:8.33333333%}.col-lg-pull-12{right:100%}.col-lg-pull-11{right:91.66666667%}.col-lg-pull-10{right:83.33333333%}.col-lg-pull-9{right:75%}.col-lg-pull-8{right:66.66666667%}.col-lg-pull-7{right:58.33333333%}.col-lg-pull-6{right:50%}.col-lg-pull-5{right:41.66666667%}.col-lg-pull-4{right:33.33333333%}.col-lg-pull-3{right:25%}.col-lg-pull-2{right:16.66666667%}.col-lg-pull-1{right:8.33333333%}.col-lg-pull-0{right:auto}.col-lg-push-12{left:100%}.col-lg-push-11{left:91.66666667%}.col-lg-push-10{left:83.33333333%}.col-lg-push-9{left:75%}.col-lg-push-8{left:66.66666667%}.col-lg-push-7{left:58.33333333%}.col-lg-push-6{left:50%}.col-lg-push-5{left:41.66666667%}.col-lg-push-4{left:33.33333333%}.col-lg-push-3{left:25%}.col-lg-push-2{left:16.66666667%}.col-lg-push-1{left:8.33333333%}.col-lg-push-0{left:auto}.col-lg-offset-12{margin-left:100%}.col-lg-offset-11{margin-left:91.66666667%}.col-lg-offset-10{margin-left:83.33333333%}.col-lg-offset-9{margin-left:75%}.col-lg-offset-8{margin-left:66.66666667%}.col-lg-offset-7{margin-left:58.33333333%}.col-lg-offset-6{margin-left:50%}.col-lg-offset-5{margin-left:41.66666667%}.col-lg-offset-4{margin-left:33.33333333%}.col-lg-offset-3{margin-left:25%}.col-lg-offset-2{margin-left:16.66666667%}.col-lg-offset-1{margin-left:8.33333333%}.col-lg-offset-0{margin-left:0}}.clearfix:before,.clearfix:after,.container:before,.container:after,.container-fluid:before,.container-fluid:after,.row:before,.row:after{content:" ";display:table}.clearfix:after,.container:after,.container-fluid:after,.row:after{clear:both}.center-block{display:block;margin-left:auto;margin-right:auto}.pull-right{float:right !important}.pull-left{float:left !important}.hide{display:none !important}.show{display:block !important}.invisible{visibility:hidden}.text-hide{font:0/0 a;color:transparent;text-shadow:none;background-color:transparent;border:0}.hidden{display:none !important}.affix{position:fixed}
    </style>
</head>
<body>
<div class="wrapper">
    <div class="top-black-nav">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <div class="languages">
                        <a href="#" class="languages-ru-md-en nav-hover" id="language-ru">ru</a>
                        <a href="#" class="languages-ru-md-en nav-hover" id="language-md">md</a>
                        <a href="#" class="languages-ru-md-en nav-hover" id="language-en">en</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <div class="social-media">
                        <a href="#" class="social-i-f-vk" id="social-vk"><img src="${contextPath}/resources/img/instagram.png" alt="instagram"></a>
                        <a href="#" class="social-i-f-vk" id="social-vk"><img src="${contextPath}/resources/img/facebook.png" alt="instagram"></a>
                        <a href="#" class="social-i-f-vk" id="social-vk"><img src="${contextPath}/resources/img/vk.png" alt="instagram"></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <div class="sign-in-and-register-links">
                        <a href="/registration" class="sign-in-and-register-link nav-hover">Регистрация</a>
                        <a href="/login" class="sign-in-and-register-link nav-hover">Войти</a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- top-black-nav -->
    <div class="white-banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="white-banner-wrapper">
                        <a href="/createEvent" id="add-event-link">Добавить событие</a>
                        <a href="/index" id="friday-logo"><img src="${contextPath}/resources/img/friday-logo.png" alt="friday-logo"></a>
                    </div> <!-- white-banner-wrapper -->
                </div>
            </div>
        </div>
    </div> <!-- white-banner -->
    <div class="page-title">
        <p id="page-title-p">Добавление события</p>
    </div> <!-- page-title -->
    <form:form action="${contextPath}/createEvent" method="post" enctype="multipart/form-data">
    <div class="event-information-input-block">
        <div class="event-photo-input input-style">
            <div class="label-left-block">
                <span>фото события</span>
            </div>
            <div class="input-right-block">
                <div class="file-upload">
                    <div class="image-box">
                        <div class="block-center"><div class="photo-icon"><img class="photo-icon" src="${contextPath}/resources/img/photo-icon.png" alt=""></div><span class="upload-item">загрузить фото</span></div><img class="event-banner" src="" alt="">
                    </div>
                    <div class="controls"><input type="file" name="fileUpload" /></div>
                </div>
            </div>
        </div> <!-- event-photo-input -->
        <div class="event-title-input input-style">
            <div class="label-left-block">
                <span>Название</span>
            </div>
            <div class="input-right-block">
                <div class="input-title">
                    <input name="title" type="text" maxlength="64">
                </div>
            </div>
        </div> <!-- event-title-input -->
        <div class="event-place-input input-style">
            <div class="label-left-block">
                <span>Место проведения</span>
            </div>
            <div class="input-right-block">
                <div class="input-place">
                    <input name="location" type="text" maxlength="70">
                </div>
            </div>
        </div> <!-- event-place-input -->
        <div class="event-select-category-input input-style">
            <div class="label-left-block">
                <span>Категория</span>
            </div>
            <div class="input-right-block">
                <div class="input-category">
                    <select name="eventType" class="event-group">
                        <%--<option value="">Выберите тип</option>--%>
                        <%--<option value="masterclass">МастерКласс</option>--%>
                        <%--<option value="movie">Кино</option>--%>
                        <%--<option value="party">Вечеринка</option>--%>
                        <%--<option value="concert">Концерт</option>--%>
                        <%--<option value="exposition">Выставка</option>--%>
                        <%--<option value="spectacle">Спектакль</option>--%>
                        <%--<option value="training">Тренинг</option>--%>
                        <%--<option value="rapbattle">РэпБатл</option>--%>
                        <%--<option value="boardgame">НастольнаяИгра</option>--%>
                        <%--<option value="other">Разное</option>--%>
                            <c:forEach items="${eventTypes}" var="et">
                                <option value=${et}>${et.view()}</option>
                            </c:forEach>
                    </select>
                </div>
            </div>
        </div> <!-- event-select-category-input -->
        <div class="event-begining-input input-style">
            <div class="label-left-block">
                <span>Начало</span>
            </div>
            <div class="input-right-block">
                <input name="startDate" type='text' class="input-begining-date">
                <input name="startTime" type="text" class="input-begining-time">
            </div>
        </div> <!-- event-begining-input -->
        <div class="event-end-input input-style">
            <div class="label-left-block">
                <span>Завершение</span>
            </div>
            <div class="input-right-block">
                <input name="endDate" type='text' class="input-begining-date">
                <input name="endTime" type="text" class="input-begining-time">
            </div>
        </div> <!-- event-end-input -->
        <div class="event-description-input input-style">
            <div class="label-left-block">
                <span>Описание</span>
            </div>
            <div class="input-right-block">
                <textarea name="description" class="input-description"></textarea>
            </div>
        </div> <!-- event-description-input -->
        <div class="event-rules-accept-checkbox">
            <div class="accept-rules">
                <input id="accept-checkbox" type="checkbox">
                <label for="accept-checkbox">я согласен с <a href="#">правилами</a> портала friday.md</label>
            </div>
        </div> <!-- event-rules-accept-checkbox -->
        <div class="button-send">
            <input type="submit" class="button-send-link">Отправить</input>
        </div>
    </form:form>
    </div> <!-- event-information-input-block -->
    <div class="footer-black">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                    <div class="logo-bottom">
                        <img src="${contextPath}/resources/img/logo-within-border.png" alt="logo-bottom">
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                    <div class="social-media">
                        <a href="#" class="social-i-f-vk" id="social-vk"><img src="${contextPath}/resources/img/instagram.png" alt="instagram"></a>
                        <a href="#" class="social-i-f-vk" id="social-vk"><img src="${contextPath}/resources/img/facebook.png" alt="instagram"></a>
                        <a href="#" class="social-i-f-vk" id="social-vk"><img src="${contextPath}/resources/img/vk.png" alt="instagram"></a>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                    <div class="footer-menu">
                        <a href="#">о проекте</a>
                        <a href="#">контакты</a>
                        <a href="#">правила</a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- footer-black -->
    <div class="footer-white">
        &#169; 2017 Friday. All right reserved.
    </div> <!-- footer-white -->
</div> <!-- wrapper -->
<script src="${contextPath}/resources/js/libs.min.js"></script>
<script src="${contextPath}/resources/js/common.js"></script>
</body>
</html>
