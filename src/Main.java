import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        String url = "jdbc:mysql://localhost:3306/shopcloth";
        String user = "root";
        String password = "";

        ConnectionPool connectionPool = new ConnectionPool(url, user, password);
        ProductService productService = new ProductServiceImpl(connectionPool);

        Scanner scanner = new Scanner(System.in);
        System.out.print("Nhập tên sản phẩm cần tìm: ");
        String productName = scanner.nextLine();

        List<Product> products = productService.findProductsByName(productName);
        if (products.isEmpty()) {
            System.out.println("Không tìm thấy sản phẩm.");
        } else {
            for (Product product : products) {
                System.out.println("ID: " + product.getId());
                System.out.println("Tên sản phẩm: " + product.getName());
                System.out.println("Mô tả: " + product.getDescription());
                System.out.println("Giá: " + product.getPrice());
                System.out.println("Ảnh sản phẩm: " + product.getImageUrl());
                System.out.println("------------------------");
            }
        }
        scanner.close();
    }
}
