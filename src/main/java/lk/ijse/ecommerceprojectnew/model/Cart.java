package lk.ijse.ecommerceprojectnew.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Cart {
    private int cart_id;
    private String username;
    private int product_id;
    private int quantity;
    private double price;
}
