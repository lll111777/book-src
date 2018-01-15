<%--
  Created by IntelliJ IDEA.
  User: LLL
  Date: 2018/1/13
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:if test="${isExist==1}">
        <title>${book.title} - ${book.author}</title>
    </c:if>
    <title>书籍详情</title>
    <link href="WebContent/css/style.css" rel="stylesheet" type="text/css" />
    <style>
        .div_inline{display:inline}
    </style>
</head>
<body>
<ul id="nav">
    <li><a href="index">首页</a></li>
    <li><a href="showBook">查看所有书籍</a></li>
    <li><a href="http://www.divcss5.com/rumen/">CSS基础</a></li>
    <li><a href="http://www.divcss5.com/css-tool/">CSS开发工具</a></li>
    <li><a href="searchBook">搜索</a></li>
    <li><a class="active-icon c1" href="#">购物车 </a>
        <%--<ul class="sub-icon1 list">
            <h3>最近添加</h3>
            <div class="shopping_cart">
                <div class="cart_box">
                    <div class="message">
                        <div class="alert-close"> </div>
                        <div class="list_img"><img src="WebContent/image/1.jpg" class="img-responsive" alt=""/></div>
                        <div class="list_desc"><h4><a href="#">书名</a></h4>数量 x<span class="actual">
		                             价格</span></div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="cart_box">
                    <div class="message1">
                        <div class="alert-close1"> </div>
                        <div class="list_img"><img src="WebContent/image/2.jpg" class="img-responsive" alt=""/></div>
                        <div class="list_desc"><h4><a href="#">书名</a></h4>数量 x<span class="actual">
		                             价格</span></div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="cart_box1">
                    <div class="message2">
                        <div class="alert-close2"> </div>
                        <div class="list_img"><img src="WebContent/image/3.jpg" class="img-responsive" alt=""/></div>
                        <div class="list_desc"><h4><a href="#">书名</a></h4>数量 x<span class="actual">
		                             价格</span></div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="total">
                <div class="total_left">共计 : </div>
                <div class="total_right">总价</div>
                <div class="clearfix"> </div>
            </div>
            <div class="login_buttons">
                <div class="check_button"><a href="checkout.html">查看购物车</a></div>
                <div class="login_button"><a href="login.html">登录</a></div>

            </div>
            <div class="clearfix"></div>
        </ul>--%>
    </li>
</ul>
<div style="height: 50px;"></div>
<c:if test="${isExist==1}">
    <div style="display: table">
        <div style="display: table-cell;width: 400px;text-align: left"></div>
        <div style="display: table-cell;width: 1500px;text-align: left">
            <div>
                <div   class="div_inline" style="width: 230px;vertical-align: top">
                    <a href="${book.cover}" title="${book.title}">
                        <img src="${book.cover}" width="230px" height="344px"/>
                    </a>
                </div>
                <div   class="div_inline" style="vertical-align: top">
                    <table style="margin-top:0;width: 600px;display: inline-block;vertical-align: top">
                        <tr style="height: 80px">
                            <td> 标题：  </td>
                            <td>${book.title}    </td>
                            <td> 作者：  </td>
                            <td>${book.author}    </td>
                            <td> 价格：  </td>
                            <td>${book.price}    </td>

                        </tr>
                        <tr style="height: 80px">
                            <td> ISBN：  </td>
                            <td>${book.ISBN}    </td>
                            <td> 出版商：  </td>
                            <td>${book.publishCompany}    </td>
                            <td> 出版日期：  </td>
                            <td>${book.pressYear}    </td>
                        </tr>
                        <tr style="height: 80px">
                            <td> 库存：  </td>
                            <td>${book.quantity}    </td>
                            <td>  </td>
                            <td>  </td>
                            <td> 预计送达：  </td>
                            <td><c:if test="${book.quantity<0}">
                                4 周
                                </c:if>
                                <c:if test="${book.quantity>=0&&book.quantity<=4}">
                                    1 周
                                </c:if>
                                <c:if test="${book.quantity>=5&&book.quantity<=20}">
                                    2~3天
                                </c:if>
                                <c:if test="${book.quantity>20}">
                                    1~2天
                                </c:if>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td>  </td>
                            <td>
                                <span>
                                    <input  type="image" src="WebContent/image/sub.jpg" width="30px" height="30px" style="vertical-align: bottom" onclick="var text=document.getElementById('selectQuantity');if(parseInt(text.value)<=1);else text.value=parseInt(text.value)-1.0;">

                                    <input id="selectQuantity" type="text" value="1" style="width: 70px;height: 30px;vertical-align: bottom" onchange="var text=document.getElementById('selectQuantity');var r = /^[0-9]*[1-9][0-9]*$/;if(r.test(text.value));else text.value=1;">

                                    <input  type="image" src="WebContent/image/add.jpg" width="30px" height="30px" style="vertical-align: bottom" onclick="var text=document.getElementById('selectQuantity');text.value=parseInt(text.value)+1.0;">

                                </span>
                            </td>
                            <td>  </td>
                            <td>  </td>
                            <td align="right"><input type="submit" value="加入购物车" ></td>
                        </tr>
                    </table>

                </div>

            </div>
            <div>
                <div style="height: 50px"></div>
                <div style=""><label style="color: green;font-size: 20px">作品简介：</label></div>
                <div style="height: 50px"></div>
                <div style="width: 750px;">${book.introduce}</div>
            </div>
        </div>
    </div>
</c:if>
<c:if test="${isExist==0}">
    书籍不存在！
</c:if>
<div style="height:150px;"></div>
</body>
</html>