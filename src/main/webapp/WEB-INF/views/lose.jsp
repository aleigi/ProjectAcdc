<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Проигрыш</title>
</head>
<body>
<c:choose>
    <c:when test="${sessionScope.gameCount == 0}">
        <h1>Поражение</h1>
        <p>Ты отклонил вызов</p>
    </c:when>
    <c:when test="${sessionScope.gameCount == 1}">
        <h1>Поражение</h1>
        <p>Ты не пошел на переговоры</p>
    </c:when>
    <c:when test="${sessionScope.gameCount == 2}">
        <h1>Поражение</h1>
        <p>Твою ложь разоблачили</p>
    </c:when>
    <c:otherwise>
        <p>Undefined</p>
    </c:otherwise>
</c:choose>

<form action="game?action=start" method="post">
    <input type="submit" value="Начать заново">
</form>
</body>
</html>
