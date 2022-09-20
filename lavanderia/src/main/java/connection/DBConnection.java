package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    Connection connection;

    static String bd = "lavanderia";
    static String port = "3306";
    static String login = "root";
    static String password = "";

    public DBConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:" + this.port + "/" + this.bd;
            connection = DriverManager.getConnection(url, this.login, this.password);
            System.out.println("Conexión establecida!");
        } catch (Exception ex) {

            System.out.println("Error en la conexión: " + ex.toString());
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public void desconectar() {
        connection = null;
    }
}
