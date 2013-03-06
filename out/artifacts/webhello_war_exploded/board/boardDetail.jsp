<%--
  Created by IntelliJ IDEA.
  User: skplanet
  Date: 13. 3. 5.
  Time: 오후 5:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="myboard.entity.Board" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title></title>
</head>
<body>

    <%Board board = (Board) request.getAttribute("board");%>
    <table>
        <tr>
            <td>Title</td>
            <td><%= board.getTitle()%></td>
        </tr>
        <tr>
            <td>Writer</td>
            <td><%= board.getWriter()%></td>
        </tr>
        <tr>
            <td>Content</td>
            <td><%= board.getContent()%></td>
        </tr>
    </table>
</body>

</html>