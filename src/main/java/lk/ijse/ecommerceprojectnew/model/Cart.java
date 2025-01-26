package lk.ijse.ecommerceprojectnew.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Cart {
    private String product_name;
    private String p_description;
    private String quantity;
    private String t_price;
}
