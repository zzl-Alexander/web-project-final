<%--
  Created by IntelliJ IDEA.
  User: zilongzhang
  Date: 2021/1/1
  Time: 3:12 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .but{
            display: flex;
            justify-content: center;
            width: 50%;
            margin: 0 25%;
        }
        .item{
            width: 20%;
            display: block;
            text-align: center;
        }
        .bbut{
            border: none;
            display: flex;
            justify-content: center;
            width: 50%;
            margin: 10px 25%;
            border-radius: 5px;
            background-color: lightgrey;
        }
        .bbut:hover{
            background-color: gray;
        }
    </style>
</head>
<body>
<a class="navbar-brand" href="https://www.nefu.edu.cn/"><img src="asserts/logo.jpg"></a>
<form action="login" method="post">
    <div class="input-group flex-nowrap but">
        <div class="input-group-prepend item">
            <div class="input-group-text cha" >用 户 名</div>
        </div>
        <input name="administratorName" type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="addon-wrapping">
    </div>
    <div class="input-group flex-nowrap but">
        <div class="input-group-prepend item">
            <div class="input-group-text" >密码</div>
        </div>
        <input name="pwd" type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="addon-wrapping">
    </div>
    <button type="submit" class="bbut">登录</button>
</form>

</body>
</html>
