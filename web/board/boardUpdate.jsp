<%--
  Created by IntelliJ IDEA.
  User: skplanet
  Date: 13. 3. 5.
  Time: 오후 5:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="myboard.entity.Board" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action="/board/update" method="post">
    <table>
        <tr>
            <td>Writer</td>
            <td><input type="text" name="writer" value=${board.writer}></td>

            <td>Password</td>
            <td><input type="password" name="pw" value=${board.pw}</td>

        </tr>
        <tr>
            <td>Title</td>
            <td><input type="text" name="title" value=${board.title}></td>
        </tr>
        <tr>
            <td>Content</td>
            <td><textarea name="content" height="100" width="100" >${board.content}</textarea> </td>
        </tr>
        <tr>
            <td><input type="submit" class="button" value="Save"/> </td>
        </tr>
    </table>
    <input type="hidden" name="id" value=${board.id}>
</form>

<jsp:include page="footer.jsp">
    <jsp:param name="footer" value="aaa"/>
</jsp:include>
</body>
</html>