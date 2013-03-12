<%--
  Created by IntelliJ IDEA.
  User: skplanet
  Date: 13. 3. 7.
  Time: 오후 3:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="myboard.repository.BoardRepository" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action="/board/login" method="post">
    <table>
        <tr>
            <td>ID</td>
            <c:choose>
                <c:when test='${not empty userId}'>
                    <td><input type="text" name="userId" value = "${userId}"></td>
                </c:when>
                <c:otherwise>
                    <td><input type="text" name="userId"></td>
                </c:otherwise>
            </c:choose>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="passWord"></td>
        </tr>
        <tr>
            <c:choose>
                <c:when test='${not empty userId}'>
                    <td><input type="checkbox" name="checked" checked/></td>
                </c:when>
                <c:otherwise>
                    <td><input type="checkbox" name="checked"></td>
                </c:otherwise>
            </c:choose>


        </tr>
        <tr>
            <td><input type="submit" class="button" value="Login"/> </td>
        </tr>
    </table>
</form>
<jsp:include page="footer.jsp">
    <jsp:param name="footer" value="aaa"/>
</jsp:include>
</body>
</html>