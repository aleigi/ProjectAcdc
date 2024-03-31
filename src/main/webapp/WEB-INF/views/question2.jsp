<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Вопрос 2</title>
</head>
<body>
    <h1>Ты принял вызов.</h1>
    <p>Поднимешься на мостик к капитану?</p>
    <form action="game?action=question2" method="post">
        <input type="radio" id="yes" name="answer" value="yes">
        <label for="yes">Подняться на мостик</label><br>
        <input type="radio" id="no" name="answer" value="no">
        <label for="no">Отказаться подниматься на мостик</label><br>
        <input type="submit" value="Ответить">
    </form>
</body>
</html>
<c:import url="footer.jsp"/>