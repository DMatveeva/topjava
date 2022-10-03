<%--
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
    <title>Title</title>
</head>
<body>
<table>
    <%--@elvariable id="mealsTo" type="java.util.List"--%>
    <c:forEach items="${mealsTo}" var="meal">
        <tr>
            <td><c:out value="${meal.dateTime}" /></td>
            <td><c:out value="${meal.description}" /></td>
            <td><c:out value="${meal.calories}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
