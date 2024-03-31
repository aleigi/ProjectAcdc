<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Вопрос 3</title>
</head>
<body>
    <h1>Ты поднялся на мостик.</h1>
    <p>Ты кто?</p>
    <form action="game?action=question3" method="post">
        <input type="radio" id="yes" name="answer" value="yes">
        <label for="yes">Рассказать правду о себе</label><br>
        <input type="radio" id="no" name="answer" value="no">
        <label for="no">Солгать о себе</label><br>
        <input type="submit" value="Ответить">
    </form>
</body>
</html>
<c:import url="footer.jsp"/>