package hello;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created with IntelliJ IDEA.
 * User: skplanet
 * Date: 13. 3. 22.
 * Time: 오후 2:17
 * To change this template use File | Settings | File Templates.
 */
public class DBTest {
    public static void main(String[] args) throws Exception {
        String url = "jdbc:postgresql://localhost:5432/test";
        String usr = "nohang";
        String pwd = "1234";
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection(url, usr, pwd);
        System.out.println(conn);
        conn.close();
    }
}
