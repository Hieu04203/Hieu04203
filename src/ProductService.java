import java.util.List;

public interface ProductService {
    // Phương thức tìm kiếm sản phẩm theo tên
    List<Product> findProductsByName(String name);
}