package myboard.repository;

import myboard.entity.Board;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * User: HolyEyE
 * Date: 13. 2. 27. Time: 오후 5:22
 */
public interface BoardRepository {

    List<Board> getBoards();

    void addBoard(Board board);
    void deleteBoard(int id);
    Board matchingId(int id);
    void updateBoard(Board board);
    boolean isLogin(HttpServletRequest request);
    String getUserId(HttpServletRequest request);
}
