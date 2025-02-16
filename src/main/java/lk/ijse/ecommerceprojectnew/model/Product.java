package lk.ijse.ecommerceprojectnew.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Product {
    private int product_id;
    private String product_name;
    private String description;
    private String price;
    private int stock_quantity;
    private String imageUrl;
    private int category_id;

}
