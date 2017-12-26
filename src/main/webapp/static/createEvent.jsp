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
<html>
<head>
    <title>Create Event</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/main.css" type="text/css">
    <script src="${contextPath}/resources/js/bootstrap.bundle.js.map"></script>
    <script src="${contextPath}/resources/js/bootstrap.bundle.js"></script>
    <link>
</head>
<body>

<form method="POST" action="${contextPath}/createEvent">
    <label>Название</label>
    <input type="text" name="title" placeholder="Введите название..." required="true" maxlength="60">
    <label>Место Проведения</label>
    <input type="text" name="location" placeholder="Введите Адрес..." required="true" maxlength="60">
    <label>Категория</label>
    <select class="event_add_form_type_select_box" id="ev-type" name="eventType">
        <option style="font-size: 14px" value="">Select event type</option>
        <c:forEach items="${eventTypes}" var="et">
            <option style="font-size: 14px" value=${et}>${et.view()}</option>
        </c:forEach>
    </select>
    <div class="container">
        <div class="row">
            <div class='col-sm-6'>
                <div class="form-group">
                    <div class='input-group date' id='datetimepicker1'>
                        <input type='text' class="form-control" />
                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                $(function () {
                    $('#datetimepicker1').datetimepicker();
                });
            </script>
        </div>
    </div>
    <label>Описание</label>
    <input type="text" name="description" placeholder="Введите Описание..." required="true" maxlength="60">
    <input type="submit" name="submit">
</form>
</body>
</html>
