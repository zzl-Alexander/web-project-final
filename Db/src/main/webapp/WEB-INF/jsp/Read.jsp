<%--
  Created by IntelliJ IDEA.
  User: zilongzhang
  Date: 2021/1/1
  Time: 8:15 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>Query</h3>
全部用户111
<ul>
    <c:forEach items="${Rusers }" var="u">
        <li>${u.name }</li>
    </c:forEach>
</ul>
<hr>
</body>
</html>
