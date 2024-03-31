<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Вопрос 1</title>
</head>
<body>
    <h1>Ты потерял память.</h1>
    <p>Принять вызов НЛО?</p>
    <form action="game?action=question1" method="post">
        <input type="radio" id="yes" name="answer" value="yes">
        <label for="yes">Принять вызов</label><br>
        <input type="radio" id="no" name="answer" value="no">
        <label for="no">Отклонить вызов</label><br>
        <input type="submit" value="Ответить">
    </form>
</body>
</html>
<c:import url="footer.jsp"/>