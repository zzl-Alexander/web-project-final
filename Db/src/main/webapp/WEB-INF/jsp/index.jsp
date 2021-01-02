<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h3>Query</h3>
全部用户
<ul>
    <c:forEach items="${users }" var="u">
        <li>${u.name }</li>
    </c:forEach>
</ul>
<hr>
<h3>Update</h3>
修改指定用户
<form action="write" method="post">
    <select name="uid">
        <c:forEach items="${users }" var="u">
            <option value="${u.id }">${u.name }</option>
        </c:forEach>
    </select>
<%--    new name:<input type="text" name="name" required>--%>
    <br>
    <button type="submit">编辑</button>
</form>
<hr>
<h3>Insert</h3>
添加指定用户
<form action="insertwrite" method="post">
<%--    <input type="submit" value="提交">--%>
    <button type="submit">添加</button>
</form>
<hr>
<h3>Delete</h3>
删除指定用户
<form action="delete" method="post">
    <select name="did">
        <c:forEach items="${users }" var="u">
            <option value="${u.id }">${u.name }</option>
        </c:forEach>
    </select>
    <br>
    <button type="submit">删除</button>
</form>
<%--<a href="delete?did=6">删除</a>--%>
<hr>
<h3>Query</h3>
<ul>
    <c:forEach items="${users }" var="u">
        <li><a href="getuser?uid=${u.id}">${u.name }</a></li>
    </c:forEach>
</ul>
</body>
</html>