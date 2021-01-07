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
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .ts{
            border: none;
            background-color: green;
            color: white;
            padding: 10px 25px;
            text-decoration: none;
            display: inline-block;
            border-radius: 8px;
        }
        .ts:hover{
            background-color: gray;
        }
    </style>
</head>
<body>

<form action="insert" method="post" enctype="multipart/form-data">

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
        <div class="input-group">
            <div class="input-group-prepend">
                <input type="file" class="form-control-file" id="inputImage" accept="image/png,image/jpg,image/gif" name="photoo" required>
            </div>

        </div>
        <button type="submit" class="ts">添加</button>
</form>
<script>

</script>
</body>
</html>

