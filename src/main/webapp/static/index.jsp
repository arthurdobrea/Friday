<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Friday | Пойск событий</title>
    <meta name="description" content="thx god it's friday">
    <meta mame="author" content="SRL FRIDAY">
    <link rel="stylesheet" href="${contextPath}/resources/css/main.css" type="text/css">
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
                        <a href="#" class="social-i-f-vk" id="social-vk"><img src="../resources/img/instagram.png" alt="instagram"></a>
                        <a href="#" class="social-i-f-vk" id="social-vk"><img src="../resources/img/facebook.png" alt="instagram"></a>
                        <a href="#" class="social-i-f-vk" id="social-vk"><img src="../resources/img/vk.png" alt="instagram"></a>
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
                        <a href="#" id="add-event-link">Добавить событие</a>
                        <a href="#" id="friday-logo"><img src="../resources/img/friday-logo.png" alt="friday-logo"></a>
                    </div> <!-- white-banner-wrapper -->
                </div>
            </div>
        </div>
    </div> <!-- white-banner -->
    <div class="page-title">
        <p id="page-title-p">события</p>
    </div> <!-- page-title -->
    <div class="block-event-group">
        <div class="first-event-group">
            <a href="#" class="event-group-title event-group-title-active">#Все</a>
            <a href="#" class="event-group-title">#МастерКлассы</a>
            <a href="#" class="event-group-title">#Кино</a>
            <a href="#" class="event-group-title">#Вечеринки</a>
            <a href="#" class="event-group-title">#Разное</a>
            <a href="#" class="event-group-title">#Концерты</a>
        </div>
        <div class="second-event-group">
            <a href="#" class="event-group-title">#Выставки</a>
            <a href="#" class="event-group-title">#Спектакли</a>
            <a href="#" class="event-group-title">#Тренинги</a>
            <a href="#" class="event-group-title">#РэпБатлы</a>
            <a href="#" class="event-group-title">#НастольныеИгры</a>
        </div>
    </div> <!-- block-event-group -->
    <div class="event-calendar">
        <div class="container">
            <div class="row">
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                    <div class="mounth-and-year-block">
                        <p id="mounth-p">Декабрь</p>
                        <p id="year-p">2017</p>
                    </div>
                </div>
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                    <div class="owl-controls">
                        <div class="owl-nav">
                            <div class="owl-prev">
                                <img src="../resources/img/arrow-select-left.png" alt="arrow-select-left">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                    <div class="calendar-carousel">
                        <div class="owl-carousel">
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        7 <span>пт</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        8 <span>сб</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        9 <span>вс</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        10 <span>пн</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        11 <span>вт</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        12 <span>ср</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        13 <span>чт</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        14 <span>пт</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        15 <span>сб</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        16 <span>вс</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        17 <span>пн</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        18 <span>вт</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        19 <span>ср</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        20 <span>чт</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        21 <span>пт</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        22 <span>сб</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        23 <span>вс</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        24 <span>пн</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        25 <span>вт</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        26 <span>ср</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        27 <span>чт</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
                                    <div class="owl-item owl-item-day"><a href="#" class="day-link">
                                        28 <span>пт</span>
                                    </a>
                                    </div> <!-- owl-item -->
                                </div> <!-- owl-stage -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                    <div class="owl-controls">
                        <div class="owl-nav">
                            <div class="owl-next">
                                <img src="../resources/img/arrow-select-right.png" alt="arrow-select-right">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
            </div>
        </div>
    </div> <!-- event-calendar -->
    <div class="search-block">
        <form action="" class="form-search">
            <input class="input-search" type="text" placeholder="Пойск по названию.." autocomplete="off">
        </form>
    </div> <!-- search-block -->
    <div class="event-block">
        <div class="event-content block-margin">
            <a href="#" class="event-photo">
                <img src="../resources/img/banner-6.jpg" alt="event-banner">
            </a>
            <div class="event-content-top-line">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                        <div class="event-content-left-side">
                            <div class="event-date-information">
                                <p class="event-date">9</p>
                                <p class="event-date-of-the-week">пн</p>
                            </div>
                        </div> <!-- left-side -->
                    </div>
                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                        <div class="event-content-right-side">
                            <div class="event-title-item">
                                <a href="#" class="title-link"><p class="event-title">Proiecția filmului artistic - "La o margine de țară". Debut</p></a>
                            </div>
                            <div class="event-information">
                                <p class="event-date-and-time-information">10 декабря 17:00</p>
                                <img class="arrow-right" src="../resources/img/arrow-right.png" alt="arrow-right">
                                <p class="event-place">Trivium Film</p>
                                <img class="arrow-right" src="../resources/img/arrow-right.png" alt="arrow-right">
                                <p class="event-city">Кишинёв</p>
                            </div>
                        </div> <!-- right-side -->
                    </div>
                </div>
            </div>
            <div class="event-content-line-in-the-middle">
                <a href="#" class="description-link">
                    <p class="event-description">
                        Proiectia unui film artistic - "La o margine de țară". Debut cinematografic.
                    </p>
                </a>
            </div>
            <div class="event-content-bottom-line">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                        <div class="user-avatar">
                            <a href="#" class="user-link">
                                <img src="../resources/img/user-avatar-1.png" alt="user-avatar">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-lg-7 col-sm-7 col-xs-7">
                        <div class="user-information-left-side">
                            <a href="#" class="event-sponsor">
                                Организатор
                            </a>
                            <a href="#" class="event-sponsor-username">
                                <span class="username">Centrul Cultural Odeon</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <div class="user-information-right-side">
                            <img src="../resources/img/live-icon.png" alt="live-indicator">
                            <span class="live-word">live</span>
                            <img src="../resources/img/eye-icon.png" alt="eye-icon">
                            <span class="number-of-views">105</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="event-content">
            <a href="#" class="event-photo">
                <img src="../resources/img/banner-1.png" alt="event-banner">
            </a>
            <div class="event-content-top-line">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                        <div class="event-content-left-side">
                            <div class="event-date-information">
                                <p class="event-date">10</p>
                                <p class="event-date-of-the-week">пн</p>
                            </div>
                        </div> <!-- left-side -->
                    </div>
                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                        <div class="event-content-right-side">
                            <div class="event-title-item">
                                <a href="#" class="title-link">
                                    <p class="event-title">Meet With Santa Claus</p>
                                </a>
                            </div>
                            <div class="event-information">
                                <p class="event-date-and-time-information">10 декабря 17:00</p>
                                <img class="arrow-right" src="../resources/img/arrow-right.png" alt="arrow-right">
                                <p class="event-place">Shoping Center</p>
                                <img class="arrow-right" src="../resources/img/arrow-right.png" alt="arrow-right">
                                <p class="event-city">Кишинёв</p>
                            </div>
                        </div> <!-- right-side -->
                    </div>
                </div>
            </div>
            <div class="event-content-line-in-the-middle">
                <a href="#" class="description-link">
                    <p class="event-description">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit.cons
                        ectetur adipisicing elit.
                    </p>
                </a>
            </div>
            <div class="event-content-bottom-line">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                        <div class="user-avatar">
                            <a href="#" class="user-link">
                                <img src="../resources/img/user-avatar-1.png" alt="user-avatar">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-lg-7 col-sm-7 col-xs-7">
                        <div class="user-information-left-side">
                            <a href="#" class="event-sponsor">
                                Организатор
                            </a>
                            <a href="#" class="event-sponsor-username">
                                <span class="username">Larisa Luca</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <div class="user-information-right-side">
                            <img src="../resources/img/live-icon.png" alt="live-indicator">
                            <span class="live-word">live</span>
                            <img src="../resources/img/eye-icon.png" alt="eye-icon">
                            <span class="number-of-views">105</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- event-block-first -->
    <div class="event-block">
        <div class="event-content block-margin">
            <a href="#" class="event-photo">
                <img src="../resources/img/banner-4.jpg" alt="event-banner">
            </a>
            <div class="event-content-top-line">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                        <div class="event-content-left-side">
                            <div class="event-date-information">
                                <p class="event-date">22</p>
                                <p class="event-date-of-the-week">пт</p>
                            </div>
                        </div> <!-- left-side -->
                    </div>
                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                        <div class="event-content-right-side">
                            <div class="event-title-item">
                                <a href="#" class="title-link">
                                    <p class="event-title">Young Life | Рождественская вечеринка</p>
                                </a>
                            </div>
                            <div class="event-information">
                                <p class="event-date-and-time-information">22 декабря 21:00</p>
                                <img class="arrow-right" src="../resources/img/arrow-right.png" alt="arrow-right">
                                <p class="event-place">Meteora</p>
                                <img class="arrow-right" src="../resources/img/arrow-right.png" alt="arrow-right">
                                <p class="event-city">Кишинёв</p>
                            </div>
                        </div> <!-- right-side -->
                    </div>
                </div>
            </div>
            <div class="event-content-line-in-the-middle">
                <a href="#" class="description-link">
                    <p class="event-description">
                        C большой радостью приглашаем тебя на Рождественскую вечеринку YoungLife!
                        Проведи с нами время с весельем, в уютной обстановке и прекрасной атмосфере, где тебя ждут друзья, подарки, угощения, интересная программа и многое другое!
                    </p>
                </a>
            </div>
            <div class="event-content-bottom-line">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                        <div class="user-avatar">
                            <a href="#" class="user-link">
                                <img src="../resources/img/user-avatar-1.png" alt="user-avatar">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-lg-7 col-sm-7 col-xs-7">
                        <div class="user-information-left-side">
                            <a href="#" class="event-sponsor">
                                Организатор
                            </a>
                            <a href="#" class="event-sponsor-username">
                                <span class="username">Young Life Moldova</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <div class="user-information-right-side">
                            <img src="../resources/img/live-icon.png" alt="live-indicator">
                            <span class="live-word">live</span>
                            <img src="../resources/img/eye-icon.png" alt="eye-icon">
                            <span class="number-of-views">105</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="event-content">
            <a href="#" class="event-photo">
                <img src="../resources/img/banner-5.jpg" alt="event-banner">
            </a>
            <div class="event-content-top-line">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                        <div class="event-content-left-side">
                            <div class="event-date-information">
                                <p class="event-date">18</p>
                                <p class="event-date-of-the-week">пн</p>
                            </div>
                        </div> <!-- left-side -->
                    </div>
                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                        <div class="event-content-right-side">
                            <div class="event-title-item">
                                <a href="#" class="title-link">
                                    <p class="event-title">Школа осознанной жизни. II поток.</p>
                                </a>
                            </div>
                            <div class="event-information">
                                <p class="event-date-and-time-information">18 января 18:30</p>
                                <img class="arrow-right" src="../resources/img/arrow-right.png" alt="arrow-right">
                                <p class="event-place">Shoping Center</p>
                                <img class="arrow-right" src="../resources/img/arrow-right.png" alt="arrow-right">
                                <p class="event-city">Кишинёв</p>
                            </div>
                        </div> <!-- right-side -->
                    </div>
                </div>
            </div>
            <div class="event-content-line-in-the-middle">
                <a href="#" class="description-link">
                    <p class="event-description">
                        ПОЗНАЙ СЕБЯ - УПРАВЛЯЙ СОБОЙ - ПОСВЯТИ СЕБЯ – ГАРМОНИЯ ЖИЗНИ
                    </p>
                </a>
            </div>
            <div class="event-content-bottom-line">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                        <div class="user-avatar">
                            <a href="#" class="user-link">
                                <img src="../resources/img/user-avatar-1.png" alt="user-avatar">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-lg-7 col-sm-7 col-xs-7">
                        <div class="user-information-left-side">
                            <a href="#" class="event-sponsor">
                                Организатор
                            </a>
                            <a href="#" class="event-sponsor-username">
                                <span class="username">TRINITY HOUSE центр комплексной терапии семьи</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <div class="user-information-right-side">
                            <img src="../resources/img/live-icon.png" alt="live-indicator">
                            <span class="live-word">live</span>
                            <img src="../resources/img/eye-icon.png" alt="eye-icon">
                            <span class="number-of-views">105</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- event-block-second -->
    <div class="event-block">
        <div class="event-content block-margin">
            <a href="#" class="event-photo">
                <img src="../resources/img/banner-2.jpg" alt="event-banner">
            </a>
            <div class="event-content-top-line">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                        <div class="event-content-left-side">
                            <div class="event-date-information">
                                <p class="event-date">29</p>
                                <p class="event-date-of-the-week">пт</p>
                            </div>
                        </div> <!-- left-side -->
                    </div>
                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                        <div class="event-content-right-side">
                            <div class="event-title-item">
                                <a href="#" class="title-link">
                                    <p class="event-title">Gala de Revelion</p>
                                </a>
                            </div>
                            <div class="event-information">
                                <p class="event-date-and-time-information">29 декабря 18:00</p>
                                <img class="arrow-right" src="../resources/img/arrow-right.png" alt="arrow-right">
                                <p class="event-place">Teatrul National de Opera si Balet Maria Biesu</p>
                                <img class="arrow-right" src="../resources/img/arrow-right.png" alt="arrow-right">
                                <p class="event-city">Кишинёв</p>
                            </div>
                        </div> <!-- right-side -->
                    </div>
                </div>
            </div>
            <div class="event-content-line-in-the-middle">
                <a href="#" class="description-link">
                    <p class="event-description">
                        Teatrul Național de Operă și Balet ”Maria Bieșu” prezintă cea mai rafinată și elegantă atmosferă a anului
                        GALA DE REVELION
                        29, 30 decembrie, ora 18.00,
                        Concert dedicat celor 60 de ani de la fondarea TNOB
                        Vino să petreci o seară extraordinară în armonia celor mai frumoase arii și ansambluri din opere celebre, interpretate de invitati speciali:
                        VALENTINA NAFORNIȚA
                        IGOR ȚURCANU
                        MIHAIL DOGOTARI
                        ADRIAN ŢÎMPĂU
                    </p>
                </a>
            </div>
            <div class="event-content-bottom-line">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                        <div class="user-avatar">
                            <a href="#" class="user-link">
                                <img src="../resources/img/user-avatar-1.png" alt="user-avatar">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-lg-7 col-sm-7 col-xs-7">
                        <div class="user-information-left-side">
                            <a href="#" class="event-sponsor">
                                Организатор
                            </a>
                            <a href="#" class="event-sponsor-username">
                                <span class="username">Teatrul National de Opera si Balet Maria Biesu</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <div class="user-information-right-side">
                            <img src="../resources/img/live-icon.png" alt="live-indicator">
                            <span class="live-word">live</span>
                            <img src="../resources/img/eye-icon.png" alt="eye-icon">
                            <span class="number-of-views">902</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="event-content">
            <a href="#" class="event-photo">
                <img src="../resources/img/banner-3.jpg" alt="event-banner">
            </a>
            <div class="event-content-top-line">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                        <div class="event-content-left-side">
                            <div class="event-date-information">
                                <p class="event-date">22</p>
                                <p class="event-date-of-the-week">пт</p>
                            </div>
                        </div> <!-- left-side -->
                    </div>
                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                        <div class="event-content-right-side">
                            <div class="event-title-item">
                                <a href="#" class="title-link">
                                    <p class="event-title">CULTure of Personality. Jay-Jay Johanson</p>
                                </a>
                            </div>
                            <div class="event-information">
                                <p class="event-date-and-time-information">22 декабря 21:00</p>
                                <img class="arrow-right" src="../resources/img/arrow-right.png" alt="arrow-right">
                                <p class="event-place">Teatrum</p>
                                <img class="arrow-right" src="../resources/img/arrow-right.png" alt="arrow-right">
                                <p class="event-city">Кишинёв</p>
                            </div>
                        </div> <!-- right-side -->
                    </div>
                </div>
            </div>
            <div class="event-content-line-in-the-middle">
                <a href="#" class="description-link">
                    <p class="event-description">
                        Есть хиты на сезон, а есть треки на века. Также и с личностями: легендарные персоны вдохновляют годами и их творчество неподвластно времени.
                        Джей-Джей Йохансон - скандинавский блондин, эстет и декадент. Шведский музыкант олицетворяющий музыку родины наравне с Roxette и The Knife, уже 20 лет записывает альбомы в стиле трип-хоп, синти-поп, электроклэш и даунтемпо.
                        Жёсткие ритмы и экспериментальные ходы его треков сочетаются с сентиментальным вокалом, создавая эклектичное звучание.
                    </p>
                </a>
            </div>
            <div class="event-content-bottom-line">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                        <div class="user-avatar">
                            <a href="#" class="user-link">
                                <img src="../resources/img/user-avatar-1.png" alt="user-avatar">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-lg-7 col-sm-7 col-xs-7">
                        <div class="user-information-left-side">
                            <a href="#" class="event-sponsor">
                                Организатор
                            </a>
                            <a href="#" class="event-sponsor-username">
                                <span class="username">CULT</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <div class="user-information-right-side">
                            <img src="../resources/img/live-icon.png" alt="live-indicator">
                            <span class="live-word">live</span>
                            <img src="../resources/img/eye-icon.png" alt="eye-icon">
                            <span class="number-of-views">105</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- event-block-third -->
</div>
<script src="../resources/js/libs.min.js"></script>
<script src="../resources/js/common.js"></script>
</body>
</html>