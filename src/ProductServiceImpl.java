import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {

    private ConnectionPool connectionPool;

    public ProductServiceImpl(ConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
    }

    @Override
    public List<Product> findProductsByName(String name) {
        // Lấy kết nối từ Connection Pool
        Connection connection = connectionPool.getConnection();
        List<Product> products = new ArrayList<>();
        try {
            // Câu lệnh SQL để tìm kiếm sản phẩm theo tên
            String query = "SELECT * FROM products WHERE name LIKE ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, "%" + name + "%"); // Sử dụng ký tự đại diện (%) để tìm kiếm gần đúng
            ResultSet rs = stmt.executeQuery();

            // Duyệt qua kết quả truy vấn và tạo đối tượng Product
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setDescription(rs.getString("description"));
                product.setPrice(rs.getDouble("price"));
                product.setImageUrl(rs.getString("image_url"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Trả lại kết nối cho pool
            connectionPool.releaseConnection(connection);
        }
        return products;
    }
}
