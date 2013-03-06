<%@ page import="java.util.Date" %>
<%@ page import="java.util.List" %>
<%@ page import="myboard.entity.Board" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
   <table>
       <tr>
           <td>title</td>
           <td>writer</td>
           <td>pw</td>
       </tr>
  <%

      List<Board> boards = (List<Board>) request.getAttribute("boards");

      for (Board board : boards) {
  %><tr><%
       out.write("<td>"+board.getId()+"</td>\n");
       out.write("<td>"+board.getTitle()+"</td>\n");
       out.write("<td>"+board.getWriter()+"</td>\n");
       out.write("<td>"+board.getPw()+"</td>\n");
       out.write("<td> <form method='PUT' action='/board/updateForm'> <input type='hidden' name='id' value='" + board.getId() + "'/> <input type='submit' value='update'/> </form> </td>\n");
       out.write("<td> <form method='POST' action='/board/delete'> <input type='hidden' name='id' value='" + board.getId() + "'/> <input type='submit' value='delete'/> </form> </td>\n");
       out.write("<td> <form method='GET' action='/board/detail'> <input type='hidden' name='id' value='" + board.getId() + "'/> <input type='submit' value='detail'/> </form> </td>\n");
   %>
    </tr>
     <% }%>
   </table>

   <input type="button" value="등록" onclick="move('/board/insertForm')" />

  <script type="text/javascript">
      var move = function(url) {
          location.href = url;
      }
  </script>
  </body>
</html>