<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<title>Spring MVC и JDBC CRUD</title>
<body>
<h2>Spring MVC и JDBC CRUD</h2>
<c:if test="${not empty msg}">
    ${msg}
</c:if>
<h3><a href="<%=request.getContextPath()%>/addUser/">Добавить нового пользователя</a></h3>
<c:choose>
    <c:when test="${userDetail != null}">
        <h3>Все пользователи</h3>
        <table cellpadding="5" cellspacing="5">
            <thead>
            <tr>
                <th>ID</th>
                <th>Имя</th>
                <th>Фамилия</th>
                <th>Email</th>
                <th>Дата рождения</th>
                <th>Действия</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${userDetail}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td>${user.email}</td>
                    <td>${user.dob}</td>
                    <td><a href="<%=request.getContextPath()%>/user/${user.id}">Подробнее</a>
                        &nbsp;
                        <a href="<%=request.getContextPath()%>/update/user/${user.id}">Изменить</a>
                        &nbsp;
                        <a href="<%=request.getContextPath()%>/delete/user/${user.id}"
                           onclick="return confirm('Вы действительно хотите удалить?')">Удалить</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:when>
    <c:otherwise>
        Пользователь не найден в базе данных!!
    </c:otherwise>
</c:choose>

</body>
</html>