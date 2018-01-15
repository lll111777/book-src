<%--
  Created by IntelliJ IDEA.
  User: LLL
  Date: 2018/1/13
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="WebContent/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div>
    <ul id="nav">
        <li><a href="index">首页</a></li>
        <li><a href="showBook">查看所有书籍</a></li>
        <li><a href="http://www.divcss5.com/rumen/">CSS基础</a></li>
        <li><a href="http://www.divcss5.com/css-tool/">CSS开发工具</a></li>
        <li><a href="http://www.divcss5.com/css-texiao/">CSS特效</a></li>
        <li><a href="http://www.divcss5.com/wenji/">CSS问题</a></li>
    </ul>
</div>
<input type="button" value="跳转到首页" onclick="window.location.href='index';">
<input type="button" value="新窗口打开" onclick="window.open('index');">
<br/>

<c:if test="${!empty booklist}">
    <c:forEach var="book" items="${booklist}">
        ISBN：${book.ISBN} &nbsp;&nbsp;标题：${book.title}&nbsp;&nbsp;封面：<img src="${book.cover}"  alt="上海鲜花港 - 郁金香" />&nbsp;&nbsp;作者：${book.author} &nbsp;&nbsp;星级：${book.star} &nbsp;&nbsp;<br>
    </c:forEach>
</c:if>

</body>
</html>
