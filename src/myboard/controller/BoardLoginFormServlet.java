package myboard.controller;

import myboard.repository.BoardMemoryRepository;
import myboard.repository.BoardRepository;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: skplanet
 * Date: 13. 3. 7.
 * Time: 오후 3:28
 * To change this template use File | Settings | File Templates.
 */
public class BoardLoginFormServlet extends HttpServlet{
    //BoardRepository boardRepository = BoardMemoryRepository.getInstance();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher view = request.getRequestDispatcher("/board/boardLogin.jsp");
        Cookie[] cookies = request.getCookies();
        String userId=null;
        for(int i = 0; i< cookies.length;i++){
            Cookie cookie = cookies[i];
            if(cookie.getName().equals("userId")){
            userId = cookie.getValue();
            break;
              }
          }
        if(request.getServletContext().getAttribute("connect")==null){
            request.getServletContext().setAttribute("connect",new Integer(0));
        }

//        int a[]={1,2,3,4,7,8,11,12,16,19,20,22,24,34,40,41};
//
//        for(int j=0 ; j< a.length;j++){
//             if(Math.random()*10+1>5){
//                 System.out.println(a[j]);
//             }
//
//        }

        int connect = (Integer)request.getServletContext().getAttribute("connect");

        request.getServletContext().setAttribute("connect",new Integer(connect));

        request.setAttribute("userId",userId);

        request.setAttribute("connect",new Integer(connect));
        view.forward(request, response);

    }
}
