<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="updateteacher" method="post">
用户：<input type="text" name="name" value="${teacher.name}"> <br>
注册时间：
    职称：<select name="titleid"> <br>
    <c:forEach items="${titles}" var="t">
        <c:set var="s" value=""/>
        <c:if test="${t.id==teacher.title.id}">
            <c:set var="s" value="selected"/>
        </c:if>
        <option value="${t.id}" ${s}>${t.name}</option>
    </c:forEach>
    </select> <br>
    授课: <br>

    <ul>
        <c:forEach items="${courses}" var="c">
            <c:set var="s"  value=""/>
                <c:forEach items="${teacher.courses}" var="x">
                    <c:if test="${x.id==c.id}">
                        <c:set var="s" value="checked"/>
                    </c:if>
                </c:forEach>
            <li>
                <label>
                    <input type="checkbox" name="courseids" value="${c.id}" ${s}> ${c.name}
                </label>
            </li>
        </c:forEach>
    </ul>
    <button type="submit">提交</button>
    <button type="reset">重置</button>
</form>
</body>
</html>