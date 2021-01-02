<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        h2,h5{
            text-align: center;
        }
        .news{
            font-size: 20px;
            text-indent: 2em;
        }
    </style>
</head>
<body>
<h2>新闻名称：${user.name }</h2>
<br>
<h5>发布时间：${user.insertTime}</h5>
<br>
<div class="news">
    ${user.news}
</div>
</body>
</html>