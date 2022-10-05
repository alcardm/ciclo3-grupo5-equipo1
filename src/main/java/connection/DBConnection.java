package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    Connection connection;
    static String bd = "g5e1_washingrent";
    static String port = "3306";
    static String login = "g5e1_washingrent";
    static String password = "g5e1_washingrent$";

    public DBConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://db4free.net:" + this.port + "/" + this.bd;
            connection = DriverManager.getConnection(url, this.login, this.password);
            System.out.println("conexion establecida");
        } catch (Exception ex) {
            System.out.println("error en la conexion");
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public void desconectar() {
        connection = null;
    }
}
