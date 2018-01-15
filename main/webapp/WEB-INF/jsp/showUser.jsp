<%--
  Created by IntelliJ IDEA.
  User: hzxiongtiankai
  Date: 2017/3/5
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Hello...
<br/>
<c:if test="${!empty userList}">
    <c:forEach var="user" items="${userList}">
        姓名：${user.userName} &nbsp;&nbsp;手机号：${user.userPhone} &nbsp;&nbsp;邮箱：${user.userEmail} &nbsp;&nbsp;<br>
    </c:forEach>
</c:if>

</body>
</html>