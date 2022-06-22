<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<title>Spring MVC и JDBC CRUD</title>
<body>
<h2>Spring MVC и JDBC CRUD</h2>
<c:if test="${not empty msg}">
    ${msg}
</c:if>
<h3>Добавить пользователя</h3>
<form method="POST" name="add_user"
      action="<%=request.getContextPath()%>/add/user">
    Имя: <input name="fname" value="${firstName}" type="text"/> <br/>
    <br/> Фамилия: <input name="lname" value="${lastName}" type="text"/>
    <br/> <br/> Email: <input name="email" value="${email}" type="text"/>
    <br/> <br/> Дата рождения: <input name="dob" value="${dob}" type="text"/>
    <br/> <br/> <input value="Добавить пользователя" type="submit"/>
</form>
</body>
</html>