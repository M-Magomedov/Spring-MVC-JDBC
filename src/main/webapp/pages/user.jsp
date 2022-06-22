<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<title>Spring MVC и JDBC CRUD</title>
<body>
<h2>Spring MVC и JDBC CRUD</h2>
Id : ${userDetail.id}
<br/> Имя : ${userDetail.firstName}
<br/> Фамилия : ${userDetail.lastName}
<br/> Email : ${userDetail.email}
<br/> Дата рождения : ${userDetail.dob}
</body>
</html>