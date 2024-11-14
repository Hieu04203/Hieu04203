import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ConnectionPool {
    private List<Connection> pool;
    private String url;
    private String user;
    private String password;
    private int poolSize = 10;

    public ConnectionPool(String url, String user, String password) {
        this.url = url;
        this.user = user;
        this.password = password;
        pool = new ArrayList<>(poolSize);

        for (int i = 0; i < poolSize; i++) {
            pool.add(createConnection());
        }
    }

    private Connection createConnection() {
        try {
            return DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public synchronized Connection getConnection() {
        if (pool.isEmpty()) {
            return createConnection();
        } else {
            return pool.remove(pool.size() - 1);
        }
    }

    public synchronized void releaseConnection(Connection connection) {
        pool.add(connection);
    }
}


