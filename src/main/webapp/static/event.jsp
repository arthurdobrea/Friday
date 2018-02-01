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
    <%-- Стандартная иконка --%>
    <link rel="icon" type="image/x-icon" href="https://example.com/favicon.ico">
    <%-- Рекоменндованная иконка --%>
    <link rel="icon" type="image/png" href="https://example.com/favicon.png">
    <%-- Иконка Apple --%>
    <link rel="apple-touch-icon" href="/custom-icon.png">
    <%-- Facebook card --%>
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://example.com/page.html">
    <meta property="og:title" content="Content Title">
    <meta property="og:image" content="https://example.com/image.jpg">
    <meta property="og:description" content="Description Here">
    <meta property="og:site_name" content="Site Name">
    <meta property="og:locale" content="en_US">
    <%-- Twitter card --%>
    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@site_account">
    <meta name="twitter:creator" content="@individual_account">
    <meta name="twitter:url" content="https://example.com/page.html">
    <meta name="twitter:title" content="Content Title">
    <meta name="twitter:description" content="Content description less than 200 characters">
    <meta name="twitter:image" content="https://example.com/image.jpg">
    <%-- google fonts --%>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;subset=cyrillic" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=PT+Serif:400,400i,700,700i&amp;subset=cyrillic"
          rel="stylesheet">
    <script src="${contextPath}/resources/js/jquery-1.10.2.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${contextPath}/resources/js/knockout-3.0.0.js"></script>
    <script src="${contextPath}/resources/js/sockjs-0.3.4.min.js"></script>
    <script src="${contextPath}/resources/js/stomp.js"></script>
    <%--[if IE 9]>
    <link rel="stylesheet" type="text/css" href="https://npmcdn.com/flatpickr/dist/ie.css">
    <![endif]--%>
    <%-- bootstrap 3.3.7 --%>
    <style>
        html {
            font-family: sans-serif;
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%
        }

        body {
            margin: 0
        }

        article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
            display: block
        }

        audio, canvas, progress, video {
            display: inline-block;
            vertical-align: baseline
        }

        audio:not([controls]) {
            display: none;
            height: 0
        }

        [hidden], template {
            display: none
        }

        a {
            background-color: transparent
        }

        a:active, a:hover {
            outline: 0
        }

        abbr[title] {
            border-bottom: 1px dotted
        }

        b, strong {
            font-weight: bold
        }

        dfn {
            font-style: italic
        }

        h1 {
            font-size: 2em;
            margin: 0.67em 0
        }

        mark {
            background: #ff0;
            color: #000
        }

        small {
            font-size: 80%
        }

        sub, sup {
            font-size: 75%;
            line-height: 0;
            position: relative;
            vertical-align: baseline
        }

        sup {
            top: -0.5em
        }

        sub {
            bottom: -0.25em
        }

        img {
            border: 0
        }

        svg:not(:root) {
            overflow: hidden
        }

        figure {
            margin: 1em 40px
        }

        hr {
            -webkit-box-sizing: content-box;
            -moz-box-sizing: content-box;
            box-sizing: content-box;
            height: 0
        }

        pre {
            overflow: auto
        }

        code, kbd, pre, samp {
            font-family: monospace, monospace;
            font-size: 1em
        }

        button, input, optgroup, select, textarea {
            color: inherit;
            font: inherit;
            margin: 0
        }

        button {
            overflow: visible
        }

        button, select {
            text-transform: none
        }

        button, html input[type="button"], input[type="reset"], input[type="submit"] {
            -webkit-appearance: button;
            cursor: pointer
        }

        button[disabled], html input[disabled] {
            cursor: default
        }

        button::-moz-focus-inner, input::-moz-focus-inner {
            border: 0;
            padding: 0
        }

        input {
            line-height: normal
        }

        input[type="checkbox"], input[type="radio"] {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 0
        }

        input[type="number"]::-webkit-inner-spin-button, input[type="number"]::-webkit-outer-spin-button {
            height: auto
        }

        input[type="search"] {
            -webkit-appearance: textfield;
            -webkit-box-sizing: content-box;
            -moz-box-sizing: content-box;
            box-sizing: content-box
        }

        input[type="search"]::-webkit-search-cancel-button, input[type="search"]::-webkit-search-decoration {
            -webkit-appearance: none
        }

        fieldset {
            border: 1px solid #c0c0c0;
            margin: 0 2px;
            padding: 0.35em 0.625em 0.75em
        }

        legend {
            border: 0;
            padding: 0
        }

        textarea {
            overflow: auto
        }

        optgroup {
            font-weight: bold
        }

        table {
            border-collapse: collapse;
            border-spacing: 0
        }

        td, th {
            padding: 0
        }

        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box
        }

        *:before, *:after {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box
        }

        html {
            font-size: 10px;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0)
        }

        body {
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 14px;
            line-height: 1.42857143;
            color: #333;
            background-color: #fff
        }

        input, button, select, textarea {
            font-family: inherit;
            font-size: inherit;
            line-height: inherit
        }

        a {
            color: #337ab7;
            text-decoration: none
        }

        a:hover, a:focus {
            color: #23527c;
            text-decoration: underline
        }

        a:focus {
            outline: 5px auto -webkit-focus-ring-color;
            outline-offset: -2px
        }

        figure {
            margin: 0
        }

        img {
            vertical-align: middle
        }

        .img-responsive {
            display: block;
            max-width: 100%;
            height: auto
        }

        .img-rounded {
            border-radius: 6px
        }

        .img-thumbnail {
            padding: 4px;
            line-height: 1.42857143;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            -webkit-transition: all .2s ease-in-out;
            -o-transition: all .2s ease-in-out;
            transition: all .2s ease-in-out;
            display: inline-block;
            max-width: 100%;
            height: auto
        }

        .img-circle {
            border-radius: 50%
        }

        hr {
            margin-top: 20px;
            margin-bottom: 20px;
            border: 0;
            border-top: 1px solid #eee
        }

        .sr-only {
            position: absolute;
            width: 1px;
            height: 1px;
            margin: -1px;
            padding: 0;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            border: 0
        }

        .sr-only-focusable:active, .sr-only-focusable:focus {
            position: static;
            width: auto;
            height: auto;
            margin: 0;
            overflow: visible;
            clip: auto
        }

        [role="button"] {
            cursor: pointer
        }

        .container {
            margin-right: auto;
            margin-left: auto;
            padding-left: 15px;
            padding-right: 15px
        }

        @media (min-width: 768px) {
            .container {
                width: 750px
            }
        }

        @media (min-width: 992px) {
            .container {
                width: 970px
            }
        }

        @media (min-width: 1200px) {
            .container {
                width: 1170px
            }
        }

        .container-fluid {
            margin-right: auto;
            margin-left: auto;
            padding-left: 15px;
            padding-right: 15px
        }

        .row {
            margin-left: -15px;
            margin-right: -15px
        }

        .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
            position: relative;
            min-height: 1px;
            padding-left: 15px;
            padding-right: 15px
        }

        .col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
            float: left
        }

        .col-xs-12 {
            width: 100%
        }

        .col-xs-11 {
            width: 91.66666667%
        }

        .col-xs-10 {
            width: 83.33333333%
        }

        .col-xs-9 {
            width: 75%
        }

        .col-xs-8 {
            width: 66.66666667%
        }

        .col-xs-7 {
            width: 58.33333333%
        }

        .col-xs-6 {
            width: 50%
        }

        .col-xs-5 {
            width: 41.66666667%
        }

        .col-xs-4 {
            width: 33.33333333%
        }

        .col-xs-3 {
            width: 25%
        }

        .col-xs-2 {
            width: 16.66666667%
        }

        .col-xs-1 {
            width: 8.33333333%
        }

        .col-xs-pull-12 {
            right: 100%
        }

        .col-xs-pull-11 {
            right: 91.66666667%
        }

        .col-xs-pull-10 {
            right: 83.33333333%
        }

        .col-xs-pull-9 {
            right: 75%
        }

        .col-xs-pull-8 {
            right: 66.66666667%
        }

        .col-xs-pull-7 {
            right: 58.33333333%
        }

        .col-xs-pull-6 {
            right: 50%
        }

        .col-xs-pull-5 {
            right: 41.66666667%
        }

        .col-xs-pull-4 {
            right: 33.33333333%
        }

        .col-xs-pull-3 {
            right: 25%
        }

        .col-xs-pull-2 {
            right: 16.66666667%
        }

        .col-xs-pull-1 {
            right: 8.33333333%
        }

        .col-xs-pull-0 {
            right: auto
        }

        .col-xs-push-12 {
            left: 100%
        }

        .col-xs-push-11 {
            left: 91.66666667%
        }

        .col-xs-push-10 {
            left: 83.33333333%
        }

        .col-xs-push-9 {
            left: 75%
        }

        .col-xs-push-8 {
            left: 66.66666667%
        }

        .col-xs-push-7 {
            left: 58.33333333%
        }

        .col-xs-push-6 {
            left: 50%
        }

        .col-xs-push-5 {
            left: 41.66666667%
        }

        .col-xs-push-4 {
            left: 33.33333333%
        }

        .col-xs-push-3 {
            left: 25%
        }

        .col-xs-push-2 {
            left: 16.66666667%
        }

        .col-xs-push-1 {
            left: 8.33333333%
        }

        .col-xs-push-0 {
            left: auto
        }

        .col-xs-offset-12 {
            margin-left: 100%
        }

        .col-xs-offset-11 {
            margin-left: 91.66666667%
        }

        .col-xs-offset-10 {
            margin-left: 83.33333333%
        }

        .col-xs-offset-9 {
            margin-left: 75%
        }

        .col-xs-offset-8 {
            margin-left: 66.66666667%
        }

        .col-xs-offset-7 {
            margin-left: 58.33333333%
        }

        .col-xs-offset-6 {
            margin-left: 50%
        }

        .col-xs-offset-5 {
            margin-left: 41.66666667%
        }

        .col-xs-offset-4 {
            margin-left: 33.33333333%
        }

        .col-xs-offset-3 {
            margin-left: 25%
        }

        .col-xs-offset-2 {
            margin-left: 16.66666667%
        }

        .col-xs-offset-1 {
            margin-left: 8.33333333%
        }

        .col-xs-offset-0 {
            margin-left: 0
        }

        @media (min-width: 768px) {
            .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
                float: left
            }

            .col-sm-12 {
                width: 100%
            }

            .col-sm-11 {
                width: 91.66666667%
            }

            .col-sm-10 {
                width: 83.33333333%
            }

            .col-sm-9 {
                width: 75%
            }

            .col-sm-8 {
                width: 66.66666667%
            }

            .col-sm-7 {
                width: 58.33333333%
            }

            .col-sm-6 {
                width: 50%
            }

            .col-sm-5 {
                width: 41.66666667%
            }

            .col-sm-4 {
                width: 33.33333333%
            }

            .col-sm-3 {
                width: 25%
            }

            .col-sm-2 {
                width: 16.66666667%
            }

            .col-sm-1 {
                width: 8.33333333%
            }

            .col-sm-pull-12 {
                right: 100%
            }

            .col-sm-pull-11 {
                right: 91.66666667%
            }

            .col-sm-pull-10 {
                right: 83.33333333%
            }

            .col-sm-pull-9 {
                right: 75%
            }

            .col-sm-pull-8 {
                right: 66.66666667%
            }

            .col-sm-pull-7 {
                right: 58.33333333%
            }

            .col-sm-pull-6 {
                right: 50%
            }

            .col-sm-pull-5 {
                right: 41.66666667%
            }

            .col-sm-pull-4 {
                right: 33.33333333%
            }

            .col-sm-pull-3 {
                right: 25%
            }

            .col-sm-pull-2 {
                right: 16.66666667%
            }

            .col-sm-pull-1 {
                right: 8.33333333%
            }

            .col-sm-pull-0 {
                right: auto
            }

            .col-sm-push-12 {
                left: 100%
            }

            .col-sm-push-11 {
                left: 91.66666667%
            }

            .col-sm-push-10 {
                left: 83.33333333%
            }

            .col-sm-push-9 {
                left: 75%
            }

            .col-sm-push-8 {
                left: 66.66666667%
            }

            .col-sm-push-7 {
                left: 58.33333333%
            }

            .col-sm-push-6 {
                left: 50%
            }

            .col-sm-push-5 {
                left: 41.66666667%
            }

            .col-sm-push-4 {
                left: 33.33333333%
            }

            .col-sm-push-3 {
                left: 25%
            }

            .col-sm-push-2 {
                left: 16.66666667%
            }

            .col-sm-push-1 {
                left: 8.33333333%
            }

            .col-sm-push-0 {
                left: auto
            }

            .col-sm-offset-12 {
                margin-left: 100%
            }

            .col-sm-offset-11 {
                margin-left: 91.66666667%
            }

            .col-sm-offset-10 {
                margin-left: 83.33333333%
            }

            .col-sm-offset-9 {
                margin-left: 75%
            }

            .col-sm-offset-8 {
                margin-left: 66.66666667%
            }

            .col-sm-offset-7 {
                margin-left: 58.33333333%
            }

            .col-sm-offset-6 {
                margin-left: 50%
            }

            .col-sm-offset-5 {
                margin-left: 41.66666667%
            }

            .col-sm-offset-4 {
                margin-left: 33.33333333%
            }

            .col-sm-offset-3 {
                margin-left: 25%
            }

            .col-sm-offset-2 {
                margin-left: 16.66666667%
            }

            .col-sm-offset-1 {
                margin-left: 8.33333333%
            }

            .col-sm-offset-0 {
                margin-left: 0
            }
        }

        @media (min-width: 992px) {
            .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
                float: left
            }

            .col-md-12 {
                width: 100%
            }

            .col-md-11 {
                width: 91.66666667%
            }

            .col-md-10 {
                width: 83.33333333%
            }

            .col-md-9 {
                width: 75%
            }

            .col-md-8 {
                width: 66.66666667%
            }

            .col-md-7 {
                width: 58.33333333%
            }

            .col-md-6 {
                width: 50%
            }

            .col-md-5 {
                width: 41.66666667%
            }

            .col-md-4 {
                width: 33.33333333%
            }

            .col-md-3 {
                width: 25%
            }

            .col-md-2 {
                width: 16.66666667%
            }

            .col-md-1 {
                width: 8.33333333%
            }

            .col-md-pull-12 {
                right: 100%
            }

            .col-md-pull-11 {
                right: 91.66666667%
            }

            .col-md-pull-10 {
                right: 83.33333333%
            }

            .col-md-pull-9 {
                right: 75%
            }

            .col-md-pull-8 {
                right: 66.66666667%
            }

            .col-md-pull-7 {
                right: 58.33333333%
            }

            .col-md-pull-6 {
                right: 50%
            }

            .col-md-pull-5 {
                right: 41.66666667%
            }

            .col-md-pull-4 {
                right: 33.33333333%
            }

            .col-md-pull-3 {
                right: 25%
            }

            .col-md-pull-2 {
                right: 16.66666667%
            }

            .col-md-pull-1 {
                right: 8.33333333%
            }

            .col-md-pull-0 {
                right: auto
            }

            .col-md-push-12 {
                left: 100%
            }

            .col-md-push-11 {
                left: 91.66666667%
            }

            .col-md-push-10 {
                left: 83.33333333%
            }

            .col-md-push-9 {
                left: 75%
            }

            .col-md-push-8 {
                left: 66.66666667%
            }

            .col-md-push-7 {
                left: 58.33333333%
            }

            .col-md-push-6 {
                left: 50%
            }

            .col-md-push-5 {
                left: 41.66666667%
            }

            .col-md-push-4 {
                left: 33.33333333%
            }

            .col-md-push-3 {
                left: 25%
            }

            .col-md-push-2 {
                left: 16.66666667%
            }

            .col-md-push-1 {
                left: 8.33333333%
            }

            .col-md-push-0 {
                left: auto
            }

            .col-md-offset-12 {
                margin-left: 100%
            }

            .col-md-offset-11 {
                margin-left: 91.66666667%
            }

            .col-md-offset-10 {
                margin-left: 83.33333333%
            }

            .col-md-offset-9 {
                margin-left: 75%
            }

            .col-md-offset-8 {
                margin-left: 66.66666667%
            }

            .col-md-offset-7 {
                margin-left: 58.33333333%
            }

            .col-md-offset-6 {
                margin-left: 50%
            }

            .col-md-offset-5 {
                margin-left: 41.66666667%
            }

            .col-md-offset-4 {
                margin-left: 33.33333333%
            }

            .col-md-offset-3 {
                margin-left: 25%
            }

            .col-md-offset-2 {
                margin-left: 16.66666667%
            }

            .col-md-offset-1 {
                margin-left: 8.33333333%
            }

            .col-md-offset-0 {
                margin-left: 0
            }
        }

        @media (min-width: 1200px) {
            .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12 {
                float: left
            }

            .col-lg-12 {
                width: 100%
            }

            .col-lg-11 {
                width: 91.66666667%
            }

            .col-lg-10 {
                width: 83.33333333%
            }

            .col-lg-9 {
                width: 75%
            }

            .col-lg-8 {
                width: 66.66666667%
            }

            .col-lg-7 {
                width: 58.33333333%
            }

            .col-lg-6 {
                width: 50%
            }

            .col-lg-5 {
                width: 41.66666667%
            }

            .col-lg-4 {
                width: 33.33333333%
            }

            .col-lg-3 {
                width: 25%
            }

            .col-lg-2 {
                width: 16.66666667%
            }

            .col-lg-1 {
                width: 8.33333333%
            }

            .col-lg-pull-12 {
                right: 100%
            }

            .col-lg-pull-11 {
                right: 91.66666667%
            }

            .col-lg-pull-10 {
                right: 83.33333333%
            }

            .col-lg-pull-9 {
                right: 75%
            }

            .col-lg-pull-8 {
                right: 66.66666667%
            }

            .col-lg-pull-7 {
                right: 58.33333333%
            }

            .col-lg-pull-6 {
                right: 50%
            }

            .col-lg-pull-5 {
                right: 41.66666667%
            }

            .col-lg-pull-4 {
                right: 33.33333333%
            }

            .col-lg-pull-3 {
                right: 25%
            }

            .col-lg-pull-2 {
                right: 16.66666667%
            }

            .col-lg-pull-1 {
                right: 8.33333333%
            }

            .col-lg-pull-0 {
                right: auto
            }

            .col-lg-push-12 {
                left: 100%
            }

            .col-lg-push-11 {
                left: 91.66666667%
            }

            .col-lg-push-10 {
                left: 83.33333333%
            }

            .col-lg-push-9 {
                left: 75%
            }

            .col-lg-push-8 {
                left: 66.66666667%
            }

            .col-lg-push-7 {
                left: 58.33333333%
            }

            .col-lg-push-6 {
                left: 50%
            }

            .col-lg-push-5 {
                left: 41.66666667%
            }

            .col-lg-push-4 {
                left: 33.33333333%
            }

            .col-lg-push-3 {
                left: 25%
            }

            .col-lg-push-2 {
                left: 16.66666667%
            }

            .col-lg-push-1 {
                left: 8.33333333%
            }

            .col-lg-push-0 {
                left: auto
            }

            .col-lg-offset-12 {
                margin-left: 100%
            }

            .col-lg-offset-11 {
                margin-left: 91.66666667%
            }

            .col-lg-offset-10 {
                margin-left: 83.33333333%
            }

            .col-lg-offset-9 {
                margin-left: 75%
            }

            .col-lg-offset-8 {
                margin-left: 66.66666667%
            }

            .col-lg-offset-7 {
                margin-left: 58.33333333%
            }

            .col-lg-offset-6 {
                margin-left: 50%
            }

            .col-lg-offset-5 {
                margin-left: 41.66666667%
            }

            .col-lg-offset-4 {
                margin-left: 33.33333333%
            }

            .col-lg-offset-3 {
                margin-left: 25%
            }

            .col-lg-offset-2 {
                margin-left: 16.66666667%
            }

            .col-lg-offset-1 {
                margin-left: 8.33333333%
            }

            .col-lg-offset-0 {
                margin-left: 0
            }
        }

        .clearfix:before, .clearfix:after, .container:before, .container:after, .container-fluid:before, .container-fluid:after, .row:before, .row:after {
            content: " ";
            display: table
        }

        .clearfix:after, .container:after, .container-fluid:after, .row:after {
            clear: both
        }

        .center-block {
            display: block;
            margin-left: auto;
            margin-right: auto
        }

        .pull-right {
            float: right !important
        }

        .pull-left {
            float: left !important
        }

        .hide {
            display: none !important
        }

        .show {
            display: block !important
        }

        .invisible {
            visibility: hidden
        }

        .text-hide {
            font: 0/0 a;
            color: transparent;
            text-shadow: none;
            background-color: transparent;
            border: 0
        }

        .hidden {
            display: none !important
        }

        .affix {
            position: fixed
        }
    </style>
    <c:url value="/simplemessages" var="socketDest" />
    <script type="text/javascript">
        /***********************************************/
        /* PLEASE READ UP ON STOMP AND SOCKJS          */
        /* 1) http://jmesnil.net/stomp-websocket/doc/  */
        /* 2) https://github.com/sockjs/sockjs-client  */
        /***********************************************/

        //Declare a stompclient which will connect to the server
        var stompClient = null;

        /**************************************************************************
         /*  JQUERY WAY OF BEING UNOBTRUSIVE AND ADDING EVENT HANDLERS TO WIDGETS,
         /*  THUS KEEPING HTML AND JAVASCRIPT SEPARATE
         /*************************************************************************/
        // Runs this code only when the DOM (all elements) are ready
        $(document).ready(function() {
            connect();
            // Event handler: X button on top right of info alert.
            // Clicking the X button on top right will dismiss it from the screen and hide it
            $(".alert").find(".close").on("click", function(e) {
                // Find all elements with the "alert" class, get all descendant elements
                // with the class "close", and bind a "click" event handler

                // Don't allow the click to bubble up the DOM
                e.stopPropagation();

                // Don't let any default functionality occur (in case it's a link)
                e.preventDefault();

                // Hide this specific Alert
                $(this).closest(".alert").slideUp(400);

                // Focus on the Send Message textfield
                $("#txtSendMessage").select();
                $("#txtSendMessage").focus();
            });

            // Event handler: Send button
            $("#sendMessage").on("click", function(e) {

                // Find the input text element for the server message
                var messageForServer = $("#txtSendMessage").val();
                if (messageForServer === "") {

                    // If message is empty prevent submission and show the alert
                    e.preventDefault();
                    $("#formAlert").slideDown(400);

                } else {

                    // Message is not empty so send to server
                    $("#formAlert").slideUp(400);

                    // Show a please wait alert
                    $("#formInfoAlert").slideDown(400);

                    // Send message to server. The message for the server must
                    // be in JSON format.
                    // Also refer SimpleMessage.java POJO.
                    sendMessageToServer(messageForServer);
                }
            });
        });

        //Function sets the state of the Connect and Disconnect buttons
        function setConnected(connected) {
            //Since we are using bootstrap, this is how you disable buttons
            // and input widgets
            $("#connect").prop('disabled', connected);
            $("#disconnect").prop('disabled', !connected);
            $("#sendMessage").prop('disabled', !connected);
            $("#txtSendMessage").prop('disabled', !connected)
        }

        // Function to connect the web client to the websocket server
        function connect() {
            //Remove any server responses from previous interactions
            $("#response").empty();
            //Also all text in server message input field should be empty
            $("#txtSendMessage").val("");
            $("#txtSendMessage").focus();
            $("#txtSendMessage").select();
            // Register a websocket endpoint using SockJS and stomp.js
            // Refer to Java class Refer to Java class
            // WebSocketConfig.java#registerStompEndpoints(StompEndpointRegistry registry)
            var socket = new SockJS('${socketDest}');
            stompClient = Stomp.over(socket);
            // Now that a stomp client is defined, its time to open a connection
            // 1) First we connect to the websocket server
            // Notice that we dont pass in username and password as Spring Security
            // has already provided the server with the Principal object containing user credentials
            // 2) The last argument is a callback function which is called when connection succeeds
            stompClient.connect('', '', function(frame) {
                //set the connect and disconnect button state. (disable connect button)
                setConnected(true);
                // In production code remove the next line
                console.log("Connected: " + frame);
                //Lets show a connection success message
                showServerBroadcast("Connection established: " + frame, false);
                // Now subscribe to a topic of interest.
                // Refer to Java class WebsocketBroadcastController.java#processMessageFromClient(SimpleMessage message)
                // WebsocketBroadcastController is waiting for connections. Upon successful connection, it subscribes to
                // the "/topic/simplemessagesresponse" destination where the server will echo the messages.
                // When a broadcast message is received by the client on that destination, it will be shown by appending
                // a paragraph to the DOM in the client browser.
                stompClient.subscribe("/event/simplemessagesresponse" + ${socket}, function(servermessage) {//Callback when server responds
                    showServerBroadcast(JSON.parse(servermessage.body).messageContent, false);
                    //Server responded so hide the info alert
                    $("#formInfoAlert").slideUp(400);
                    //Also all text in server message input field should be empty
                    $("#txtSendMessage").val("");
                    $("#txtSendMessage").focus();
                    $("#txtSendMessage").select();
                });
            });
        }

        // Function to send the message typed in by the user to the "/app/simplemessages" destination on the server.
        // WebsocketBroadcastController will receive this message and broadcast the results after
        // an artificially introduced delay.
        function sendMessageToServer(messageForServer) {
            //Show on the browser page that a message is being sent
            showServerBroadcast(messageForServer , true);
            // The message for the server must be in JSON format. Also refer SimpleMessage.java POJO.
            stompClient.send("/app/simplemessages", {}, JSON.stringify({
                'message' : messageForServer
            }));
        }

        /**
         * Function to show the server response on the web page
         * @param servermessage - text to be shown on webpage
         * @param localMessage - boolean, if true then it means its a
         *                       client side javascript generated message.
         */
        function showServerBroadcast(servermessage, localMessage) {
            // Server surrounds the user sent message with <b> and </b>
            // as &ltb&gt;message%lt;/b&gt;
            // Use Jquery to decode the HTML and show it as <b>message</b>
            var decoded = $("<div/>").html(servermessage).text();

            var tmp = "";
            var serverResponse = document.getElementById("response");
            var p = document.createElement('p');
            p.style.wordWrap = 'break-word';

            if (localMessage) {
                p.style.color = '#006600';
                tmp = "<span class='glyphicon glyphicon-dashboard'></span> " + decoded + " (Browser time:" + getCurrentDateTime() + ")";
            } else {
                p.style.color = '#8A0808';
                tmp = "<span class='glyphicon glyphicon-arrow-right'></span> " + decoded;
            }
            //Assigning the decoded HTML to the <p> element
            p.innerHTML = tmp;
            serverResponse.appendChild(p);
        }

        /**
         * Utility function to return the date time in simple format
         * like Tue Jan 07 2014 @ 11:47:24 AM
         */
        function getCurrentDateTime() {
            var date = new Date();
            var n = date.toDateString();
            var time = date.toLocaleTimeString();
            return n + " @ " + time;
        }
    </script>
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
                        <a href="#" class="social-i-f-vk" id="social-vk"><img
                                src="${contextPath}/resources/img/instagram.png" alt="instagram"></a>
                        <a href="#" class="social-i-f-vk" id="social-vk"><img
                                src="${contextPath}/resources/img/facebook.png" alt="instagram"></a>
                        <a href="#" class="social-i-f-vk" id="social-vk"><img src="${contextPath}/resources/img/vk.png"
                                                                              alt="instagram"></a>
                    </div>
                </div>
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <form id="logoutForm" method="POST" action="${contextPath}/logout">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>

                    <p style="color: white">Welcome ${pageContext.request.userPrincipal.name} | <a
                            onclick="document.forms['logoutForm'].submit()">Logout</a>
                    </p>

                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name == null}">
                    <div class="sign-in-and-register-links">
                        <a href="/registration" class="sign-in-and-register-link nav-hover">Регистрация</a>
                        <a href="/login" class="sign-in-and-register-link nav-hover">Войти</a>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
    <%-- top-black-nav --%>
    <div class="white-banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="white-banner-wrapper">
                        <a href="${contextPath}/event/create" id="add-event-link">Добавить событие</a>
                        <a href="${contextPath}/" id="friday-logo"><img
                                src="${contextPath}/resources/img/friday-logo.png"
                                alt="friday-logo"></a>
                    </div>
                    <%-- white-banner-wrapper --%>
                </div>
            </div>
        </div>
    </div>
    <%-- white-banner --%>
    <div class="page-title">
        <p id="page-title-p">Событие</p>
    </div>
    <%--WEBSOCKETCHAT--%>

    <%--<div class="row">--%>
        <%--<div class="col-sm-6">--%>
            <%--<p>&nbsp;</p>--%>
            <%--<!-- Connect and Disconnect buttons to establish/terminate a connection to the websocket service -->--%>
            <%--<div class="panel">--%>
                <%--<button id="connect" class="btn btn-success btn-sm">Connect</button>--%>
                <%--<button id="disconnect" class="btn btn-danger btn-sm">Disconnect</button>--%>
            <%--</div>--%>
            <%--<p/>--%>
            <%--<div class="panel panel-default">--%>
                <%--<div class="panel-heading">Send Messages To WebSocket Server</div>--%>
                <%--<div class="panel-body" id="conversationDiv">--%>
                    <%--<div class="input-group">--%>
                        <%--<input type="text" class="form-control" &lt;%&ndash;id="txtSendMessage"&ndash;%&gt; placeholder="Enter message">--%>
                        <%--<span class="input-group-btn">--%>
                <%--<button &lt;%&ndash;id="sendMessage"&ndash;%&gt; class="btn btn-primary">--%>
                  <%--<span class="glyphicon glyphicon-share-alt"></span>&nbsp;Send--%>
                <%--</button>--%>
              <%--</span>--%>
                    <%--</div>--%>
                    <%--<!-- Error alert -->--%>
                    <%--<div class="alert alert-danger alert-dismissable" id="formAlert">--%>
                        <%--<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;--%>
                        <%--</button>--%>
                        <%--<strong>Error!</strong> Message cannot be blank.--%>
                    <%--</div>--%>
                    <%--<!-- /Error alert -->--%>
                    <%--<!-- Info alert -->--%>
                    <%--<div class="alert alert-info alert-dismissable" id="formInfoAlert">--%>
                        <%--<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;--%>
                        <%--</button>--%>
                        <%--<strong>Message Sent!</strong> <br/>Your message has been sent to the server. You can--%>
                        <%--continue to do other actions. Server response will be shown when it arrives.--%>
                    <%--</div>--%>
                    <%--<!-- /Info alert -->--%>
                    <%--<!-- .input-group -->--%>
                <%--</div>--%>
                <%--<!-- .panel-body -->--%>
                <%--<div class="panel-body" &lt;%&ndash;id="response"&ndash;%&gt;></div>--%>
                <%--<!-- Div to show the server responses -->--%>
            <%--</div>--%>
            <%--<!-- .panel -->--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--WEBSOCKETCHAT--%>
    <%-- page-title --%>
    <div class="event-page-block">
        <div class="chat-block">
            <div class="chat-header">
                обсуждение
            </div>
            <div class="chat-content">
                <div class="chat-content-wrapper">
                    <div class="chat-message">
                        <%--<div class="chat-user-avatar">--%>
                            <%--<img src="${contextPath}/resources/img/user-avatar-1.png" alt="user-avatar">--%>
                        <%--</div>--%>
                        <div class="user-message" id="response">
                            <%--<div class="chat-username">--%>
                                <%--<span>Larisa Lika</span>--%>
                            <%--</div>--%>
                            <div class="message">
                            </div>
                            <%--<div class="message-date">--%>
                                <%--сегодня в 19:07.--%>
                            <%--</div>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="user-message-input">
                <textarea type="text"  id="txtSendMessage" class="user-message" placeholder="Введите сообщение.."></textarea>
                <button type="submit" id="sendMessage" class="send-message"><img src="${contextPath}/resources/img/send.png" alt="">
                </button>
            </div>
        </div>
        <%-- chat-block --%>
        <div class="event-content-block">
            <div class="event-img-block">
                <img src="data:image/jpeg;base64, ${event.getImageBase64()}" alt="event-banner" width="486px"
                     height="186px"/>
            </div>
            <div class="event-title-block">
                <p>${event.title}</p>
            </div>
            <%-- event-title --%>
            <div class="event-information-top-line">
                <div class="event-information-left-block">
                    <div class="event-date-block">
                        <img src="${contextPath}/resources/img/calendar-icon.png" alt="calendar-icon"/>
                        <span>${event.start.toString().substring(8,10)} ${month.toString()}</span>
                    </div>
                    <div class="event-time-block">
                        <img src="${contextPath}/resources/img/clock-icon.png" alt="clock-icon"/>
                        <span>${event.start.toString().substring(11)}-${event.end.toString().substring(11)}</span>
                    </div>
                </div>
                <div class="event-information-right-block">
                    <div class="user-avatar">
                        <img src="${contextPath}/resources/img/user-avatar-1.png" alt=""/>
                    </div>
                    <div class="user-info">
                        <span>Организатор</span>
                        <p>${event.author.getUsername()}</p>
                    </div>
                </div>
            </div>
            <div class="event-information-middle-line">
                <img src="${contextPath}/resources/img/picker.png" alt="picker-icon"/>
                <p>${event.location}</p>
            </div>
            <div class="event-information-bottom-line">
                <div class="event-description">
                    <span>Описание</span>
                </div>
                <p>${event.description}</p>
            </div>
        </div>
        <%-- event-content-block --%>
    </div>
    <%-- event-page-block --%>
    <div class="footer-black">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                    <div class="logo-bottom">
                        <img src="${contextPath}/resources/img/logo-within-border.png" alt="logo-bottom">
                    </div>
                    <div class="social-media">
                        <a href="#" class="social-i-f-vk" id="social-vk"><img
                                src="${contextPath}/resources/img/instagram.png" alt="instagram"></a>
                        <a href="#" class="social-i-f-vk" id="social-vk"><img
                                src="${contextPath}/resources/img/facebook.png" alt="instagram"></a>
                        <a href="#" class="social-i-f-vk" id="social-vk"><img src="${contextPath}/resources/img/vk.png"
                                                                              alt="instagram"></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                    <div class="footer-menu">
                        <a href="#">о проекте</a>
                        <a href="#">контакты</a>
                        <a href="#">правила</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%-- footer-black --%>
    <div class="footer-white">
        &#169; 2017 Friday. All right reserved.
    </div>
    <%-- footer-white --%>
</div>
<%-- wrapper --%>
<script src="../../../../../Users/adobrya/Desktop/friday.md-master/app/js/libs.min.js"></script>
<script src="../../../../../Users/adobrya/Desktop/friday.md-master/app/js/common.js"></script>
</body>
</html>