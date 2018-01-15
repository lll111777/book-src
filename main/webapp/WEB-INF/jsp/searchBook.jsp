<%--
  Created by IntelliJ IDEA.
  User: LLL
  Date: 2018/1/15
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>搜索</title>
    <link href="WebContent/css/style.css" rel="stylesheet" type="text/css" />
    <meta charset="UTF-8">
    <style>
        .div_inline{display:inline-block}
    </style>
    <script type="text/javascript" charset="gb2312">

        var LocString = String(window.document.location.href);
        function getQueryStr(str) {
            var reg = new RegExp("(^|&)"+ str +"=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if(r!=null)return  decodeURIComponent(r[2]);
            return "";
        }
        function a()
        {
            document.getElementById("author_text").value=getQueryStr("author");
            console.log(getQueryStr("author"));
            document.getElementById("title_text").value=getQueryStr("title");
            console.log(getQueryStr("title"));
            document.getElementById("ISBN_text").value=getQueryStr("ISBN");
        }
        window.onload=a;

    </script>
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
<div style="display: table">
    <div style="display: table-cell;width: 500px"></div>
    <div style="display: table-cell;width: 1400px">
        <div style="height: 50px;text-align: left;"></div>
        <div style="height: 100px;text-align: left;">
            <span style="margin-top: auto">
                <span>
                    <label>作者：</label>
                    <input id="author_text" type="text" value="">
                </span>
                <span>
                    <label>标题：</label>
                    <input id="title_text" type="text" value="">
                </span>
                <span>
                    <label>ISBN：</label>
                    <input id="ISBN_text" type="text" value="">
                </span>
                <input type="button" value="搜索" onclick="var hrefLoc='searchBook?author='+document.getElementById('author_text').value+'&title='+document.getElementById('title_text').value+'&ISBN='+document.getElementById('ISBN_text').value;window.location.href=hrefLoc;">
            </span>
        </div>
        <div style="height: 100px;text-align: left;">
            <label style="font-size: 24px;margin-top: auto">搜索结果：</label>
        </div>
        <div style="text-align: left;">
            <c:if test="${isExist==0}">
                <label style="color: #FF0000;font-size: 20px">搜索结果为空</label>
            </c:if>
            <c:if test="${isExist!=0&&booklist.size()!=0}">
                <div>
                    <c:forEach var="book" items="${booklist}">
                        <div style="height: 200px">
                            <span >
                                <a href="bookInfo?ISBN=${book.ISBN}" style="vertical-align: top" title="${book.title}"><img src="${book.cover}" width="115px" height="172px" border="5"  alt="${book.title}"/></a>
                                <table style="display:inline-block;height: 172px;vertical-align: top">
                                    <tr style="height: 40px">
                                        <td><a href="bookInfo?ISBN=${book.ISBN}" title="${book.title}"><label style="font-size: 16px;color: #00A2CA">${book.title}</label></a></td>
                                    </tr>
                                    <tr style="height: 40px">
                                        <td><label style="font-size: 12px;color: #7F7F7F">${book.author}</label></td>
                                    </tr >
                                    <tr style="height: 40px">
                                        <td><label style="font-size: 12px;color: #7F7F7F">ISBN:  ${book.ISBN}</label></td>
                                    </tr >
                                    <tr style="height: 40px">
                                        <td><label style="font-size: 12px;color: #7F7F7F">${book.publishCompany} / ${book.pressYear} / ${book.price}元</label></td>
                                    </tr>
                                </table>
                            </span>
                        </div>
                    </c:forEach>
                </div>
            </c:if>
        </div>
        <div style="text-align: left;">
            
        </div>
        <div style="height: 100px;text-align: left;"></div>
    </div>
</div>
</body>
</html>
