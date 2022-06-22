<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<title>Spring MVC и JDBC CRUD</title>
<body>
<h2>Spring MVC и JDBC CRUD</h2>
<c:if test="${not empty msg}">
    ${msg}
</c:if>
<h3>Update User</h3>
<form method="POST" name="update_user"
      action="<%=request.getContextPath()%>/update/user">
    <input hidden="hidden" name="id" value="${id}" type="text"/> First
    Name: <input name="fname" value="${userDetail.firstName}" type="text"/>
    <br/>
    <br/> Last Name: <input name="lname" value="${userDetail.lastName}"
                            type="text"/> <br/> <br/> Email: <input name="email"
                                                                    value="${userDetail.email}" type="text"/><br/>
    <br/> Дата рождения: <input name="dob" value="${userDetail.dob}" type="text"/><br/>
    <br/> <input value="Изменить" type="submit"/>
</form>
</body>
</html>