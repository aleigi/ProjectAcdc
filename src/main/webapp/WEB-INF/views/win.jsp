<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Победа</title>
</head>
<body>
    <h1>Победа!</h1>
    <p>Тебя вернули домой!</p>
    <form action="game?action=start" method="post">
        <input type="submit" value="Начать заново">
    </form>
</body>
</html>