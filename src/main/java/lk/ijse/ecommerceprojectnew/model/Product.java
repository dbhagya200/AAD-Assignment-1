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
    private double price;
    private int stock_quantity;
    //    private int category_id;
    private String imageUrl;
}
