<%--
  Created by IntelliJ IDEA.
  User: zilongzhang
  Date: 2021/1/1
  Time: 1:57 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<h1>sb</h1>

<form action="insert" method="post">

    <%--    new name:<input type="text" name="name" required>--%>
    <%--    <br>--%>
    <%--    new news:<textarea cols="8" rows="20" name="news">介绍一下自己</textarea>--%>

    <%--    <br>--%>
    <div class="input-group input-group-lg">
        <div class="input-group-prepend">
            <span class="input-group-text" id="inputGroup-sizing-lg">编辑新的标题</span>
        </div>
        <input type="text" class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm" name="addname">
    </div>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">编辑新闻</span>
        </div>
        <textarea class="form-control" aria-label="With textarea" rows="5" name="news"></textarea>
    </div>
    <button type="submit">提交</button>
</form>

</body>
</html>

