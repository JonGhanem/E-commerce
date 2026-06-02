package net.yahya.ecommerce.kafka;

import net.yahya.ecommerce.customer.CustomerResponse;
import net.yahya.ecommerce.order.PaymentMethod;
import net.yahya.ecommerce.product.PurchaseResponse;

import java.math.BigDecimal;
import java.util.List;

public record OrderConfirmation(
        String orderReference,
        BigDecimal totalAmount,
        PaymentMethod paymentMethod,
        CustomerResponse customerResponse,
        List<PurchaseResponse> products
) {
}
