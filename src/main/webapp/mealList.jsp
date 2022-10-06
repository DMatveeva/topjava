<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %><%--
  Created by IntelliJ IDEA.
  User: Дарья
  Date: 10/3/2022
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meal List</title>
    <style>
        .normal {color: green}
        .exceeded {color: red}
    </style>
</head>
<body>
<section>
    <h2><a href="index.html">Home</a></h2>
    <h3>Meal List</h3>
    <hr>
    <table border="1" cellpadding="8" cellspacing="0">
        <thead>
        <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Calories</th>
        </tr>
        </thead>
        <c:forEach items="${mealList}" var="meal">
            <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.UserMealWithExceed"/>
            <tr class="${meal.exceeded ? 'exceeded' : 'normal'}">
                <td><%=TimeUtil.toString(meal.getDateTime())%></td>
                <td><c:out value="${meal.description}" /></td>
                <td><c:out value="${meal.calories}" /></td>
            </tr>
        </c:forEach>
    </table>

</section>

</body>
</html>
