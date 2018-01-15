<%--
  Created by IntelliJ IDEA.
  User: LLL
  Date: 2018/1/12
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>主页</title>
    <link href="WebContent/css/style.css" rel="stylesheet" type="text/css" />
    <style>
        .div_inline{display:inline-block}
    </style>
</head>
<body>
<ul id="nav">
    <li><a href="index">首页</a></li>
    <li><a href="showBook">查看所有书籍</a></li>
    <li><a href="http://www.divcss5.com/rumen/">CSS基础</a></li>
    <li><a href="http://www.divcss5.com/css-tool/">CSS开发工具</a></li>
    <li><a href="searchBook">搜索</a></li>
    <li><a href="http://www.divcss5.com/wenji/">CSS问题</a></li>
</ul>
<div>
    <div style="height: 20px"><label >好书推荐：</label></div>
    <c:if test="${booklist.size()>5}">
        <div >
            <div>
                <c:forEach var="book" items="${booklist}" end="4">
                    <div class="div_inline" style="width: 150px">
                        <div><a href="bookInfo?ISBN=${book.ISBN}" title="${book.title}"><img src="${book.cover}" width="115px" height="172px" border="5"  alt="${book.title}"/></a></div>
                    </div>
                </c:forEach>
            </div>
            <div>
                <c:forEach var="book" items="${booklist}" end="4">
                    <div class="div_inline" style="width: 150px">
                        <div><a href="bookInfo?ISBN=${book.ISBN}" title="${book.title}">${book.title}</a></div>
                    </div>
                </c:forEach>
            </div>
            <div>
                <c:forEach var="book" items="${booklist}" end="4">
                    <div class="div_inline" style="width: 150px">
                        <div>${book.author}</div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div style="height: 20px"></div>
        <div>
            <div>
                <c:forEach var="book" items="${booklist}" begin="5">
                    <div class="div_inline" style="width: 150px">
                        <div><a href="bookInfo?ISBN=${book.ISBN}" title="${book.title}"><img src="${book.cover}" width="115px" height="172px" border="5"  alt="${book.title}"/></a></div>
                    </div>
                </c:forEach>
            </div>
            <div>
                <c:forEach var="book" items="${booklist}" begin="5">
                    <div class="div_inline" style="width: 150px">
                        <div><a href="bookInfo?ISBN=${book.ISBN}" title="${book.title}">${book.title}</a></div>
                    </div>
                </c:forEach>
            </div>
            <div>
                <c:forEach var="book" items="${booklist}" begin="5">
                    <div class="div_inline" style="width: 150px">
                        <div>${book.author}</div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </c:if>
</div>
</body>
</html>
