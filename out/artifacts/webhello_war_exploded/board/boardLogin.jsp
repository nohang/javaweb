<%--
  Created by IntelliJ IDEA.
  User: skplanet
  Date: 13. 3. 7.
  Time: 오후 3:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="myboard.repository.BoardRepository" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action="/board/login" method="post">
    <table>
        <tr>
            <td>ID</td>
            <%
                Object userId = request.getAttribute("userId");
                if(userId!=null)
                    out.write("<td><input type=\"text\" name=\"userId\" value = "+userId+"></td>");
                else
                    out.write("<td><input type=\"text\" name=\"userId\"></td>");
            %>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="passWord"></td>
        </tr>
        <tr>
            <%
                if(userId!=null)
                    out.write("<td><input type=\"checkbox\" name=\"checked\" checked/> </td>");
                else
                    out.write("<td><input type=\"checkbox\" name=\"checked\"> </td>");
            %>

        </tr>
        <tr>
            <td><input type="submit" class="button" value="Login"/> </td>
        </tr>
    </table>
</form>
</body>
</html>