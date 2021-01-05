<%--
  Created by IntelliJ IDEA.
  User: zilongzhang
  Date: 2021/1/1
  Time: 8:15 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        ul,li{
            list-style: none;
        }
        a{
            text-decoration: none;
        }
        .fontsize{
            font-size: 25px;
            text-align: center;
        }
        /*整个导航栏*/
        .nav{
            display: flex;
            align-items: center;
            position: relative;
            background: darkcyan;
        }
        /*导航的每一块*/
        .item{
            text-align: center;
        }
        .nav a{
            display: block;
            padding: 15px 25px;
            text-decoration: none;
            background-color: darkcyan;
            color: white;
        }

        .header ul{
            display: none;
            position: absolute;
        }
        .nav ul a:hover{
            background-color: lightgrey;
        }
        .item:hover ul{
            color: white;
            display: block;
        }
        .content{
            margin: 10px;
        }
        h1{
            text-align: center;
        }
        p{
            text-indent: 2em;
        }

        /*以上是导航*/
        .itemul{
            padding-left: 20px;
            margin-top: 30px;
            width: 50%;
        }
        .itemul a{
            color: black;
            font-size: 25px;
            display: flex;
            height: 15%;
        }
        .itemul a:hover{
            text-decoration: none;
            color: #60b9db;
        }
        .lef{
            width: 50%;
        }
        .right{
            margin-left: auto;
        }
    </style>
</head>
<body>
<%--<h3>Query</h3>--%>
<%--全部用户111--%>
<%--<ul>--%>
<%--    <c:forEach items="${Rusers }" var="u">--%>
<%--        <li>${u.name }</li>--%>
<%--    </c:forEach>--%>
<%--</ul>--%>
<%--<hr>--%>


<div class="header">
    <div class="nav">
        <div class="item">
            <img src="asserts/logo.jpg">
        </div>
        <div class="item fontsize">
            <div style="text-align: center"><a href="Main">主页</a></div>
            <!--            &lt;!&ndash;二级导航&ndash;&gt;-->
            <!--            <ul class="fontsize" style="background-color: #60b9db">-->
            <!--                <li><a href="">学校概况</a></li>-->
            <!--                <li><a href="">学校概况</a></li>-->
            <!--            </ul>-->
        </div>
        <div class="item fontsize">
            <div><a href="">专业相关</a></div>
            <!--二级导航-->
            <ul class="fontsize">
                <li><a href="Child/introdu/1.html">专业介绍</a></li>
                <li><a href="Child/introdu/2.html">专业方向</a></li>
            </ul>
        </div>
        <div class="item fontsize">
            <div><a href="">师资团队</a></div>
            <!--二级导航-->
            <ul class="fontsize">
                <li><a href="Child/Teacher/1.html">教授</a></li>
                <li><a href="Child/Teacher/2.html">副教授</a></li>
                <li><a href="Child/Teacher/3.html">讲师</a></li>
            </ul>
        </div>
        <div class="item fontsize">
            <div><a href="">实验室</a></div>
            <!--二级导航-->
            <ul class="fontsize">
                <li><a href="Child/experiment/1.html">923创新实验室</a></li>
                <li><a href="Child/experiment/2.html">925移动开发实验室</a></li>
            </ul>
        </div>
        <div class="item fontsize">
            <div><a href="Child/introdu/3.html">就业指导</a></div>
        </div>
        <div class="item fontsize right">
            <div><a href="login">后台管理</a></div>
        </div>
    </div>

</div>
<div class="itemul">
    <c:forEach items="${users }" var="u">
        <a href="getuser?uid=${u.id}" target="_blank"><div class="lef"> <fmt:formatDate pattern="yyyy-MM-dd" value="${u.insertTime}"></fmt:formatDate></div><div>${u.name } </div> </a>
    </c:forEach>

</div>
</body>
</html>
