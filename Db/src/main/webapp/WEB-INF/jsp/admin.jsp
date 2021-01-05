<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
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
        .footer{
            position: fixed;
            bottom: 0;
            width: 100%;
            margin: auto;
            text-align: center;
            background-color: darkcyan;
            color: white;
        }
        /*以上是导航*/











        /* 抽象全局标签，仅设置大小圆角等基本属性 */
        span.label {
            padding: 0 10px;
            border-radius: 3px;
            color: white;
        }
        /* 成功标签，绿色 */
        span.label-success {
            background: green;
        }
        /* 警告标签，橙色 */
        span.label-warning {
            background: orange;
        }
        /* --------------全局table属性-------------------- */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th, table td {
            text-align: center;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        tbody tr:nth-child(odd) {
            background-color: #f2f2f2;
        }

        /* --------------全局超链接按钮------------------ */
        a.btn {
            background-color: #f44336;
            color: white;
            padding: 10px 25px;
            text-decoration: none;
            display: inline-block;
            border-radius: 8px;
        }
        .ts{
            border: none;
            background-color: #f44336;
            color: white;
            padding: 10px 25px;
            text-decoration: none;
            display: inline-block;
            border-radius: 8px;
        }
        .tts{
            border: none;
            background-color: gray;
            color: white;
            padding: 10px 25px;
            text-decoration: none;
            display: inline-block;
            border-radius: 8px;
        }
        a.btn:hover {
            background-color: red;
        }
        .ts:hover{
            background-color: red;
        }
        /*.itemul{*/
        /*    padding-left: 20px;*/
        /*    margin-top: 30px;*/
        /*    width: 50%;*/
        /*}*/
        /*.itemul a{*/
        /*    color: black;*/
        /*    font-size: 25px;*/
        /*    display: flex;*/
        /*    height: 15%;*/
        /*}*/
        /*.itemul a:hover{*/
        /*    text-decoration: none;*/
        /*    color: #60b9db;*/
        /*}*/
        /*.lef{*/
        /*    width: 50%;*/
        /*}*/
    </style>
</head>
<body>
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
    </div>
</div>
<div class="main">
    <table>
        <thead>
        <tr>
            <th>操作类型</th>
            <th>进行选择</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Select</td>
            <td>
                点击右侧按钮查看新闻
            </td>
            <td><form action="Read" method="get">
                <%--    <input type="submit" value="提交">--%>
                <button type="submit" class="ts">查看</button>
            </form></td>
        </tr>
        <tr>
            <td>Insert</td>
            <td>
                点击右侧按钮添加新闻
            </td>
            <td><form action="insertwrite" method="post">
                <%--    <input type="submit" value="提交">--%>
                <button type="submit" class="ts">添加</button>
            </form></td>
        </tr>
        <tr>
            <td>Update</td>
            <form action="write" method="post">
            <td>

                    <select name="uid" class="tts">
                        <c:forEach items="${users }" var="u">
                            <option value="${u.id }">${u.name }</option>
                        </c:forEach>
                    </select>


            </td>
                <td><button type="submit" class="ts">修改</button></td>
            </form>
        </tr>
        <tr>
            <td>Delete</td>
            <form action="delete" method="post">
            <td>
                <select name="did" class="tts">
                    <c:forEach items="${users }" var="u">
                        <option value="${u.id }">${u.name }</option>
                    </c:forEach>
                </select>
                <br>
            </td>
            <td><button type="submit" class="ts">删除</button></td>
            </form>
        </tr>
        </tbody>
    </table>
</div>
<%--<h3>Query</h3>--%>
<%--全部用户--%>
<%--<ul>--%>
<%--    <c:forEach items="${users }" var="u">--%>
<%--        <li>${u.name }</li>--%>
<%--    </c:forEach>--%>
<%--</ul>--%>

<div class="itemul">
    <c:forEach items="${Rusers }" var="u">
        <a href="getuser?uid=${u.id}" target="_blank"><div class="lef"> <fmt:formatDate pattern="yyyy-MM-dd" value="${u.insertTime}"></fmt:formatDate></div><div>${u.name } </div> </a>
    </c:forEach>

</div>
<hr>
<h2>Query</h2>
<ul>
    <c:forEach items="${users }" var="u">
        <li><a href="getuser?uid=${u.id}">${u.name }</a></li>
    </c:forEach>
</ul>
<div class="footer">
    <p>东北林业大学<br>
        2018级软件工程3班张子龙</p>
</div>
</body>
</html>