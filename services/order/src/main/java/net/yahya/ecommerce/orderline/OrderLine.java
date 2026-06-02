package net.yahya.ecommerce.orderline;

import jakarta.persistence.*;
import lombok.*;
import net.yahya.ecommerce.order.Order;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Builder
public class OrderLine {

    @Id
    @GeneratedValue
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;

    private Integer productId;

    private double quantity;
}
