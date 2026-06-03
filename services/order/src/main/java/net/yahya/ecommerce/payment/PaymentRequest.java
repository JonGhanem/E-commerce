package net.yahya.ecommerce.payment;

import net.yahya.ecommerce.customer.CustomerResponse;
import net.yahya.ecommerce.order.PaymentMethod;

import java.math.BigDecimal;

public record PaymentRequest(
        BigDecimal amount,
        PaymentMethod paymentMethod,
        Integer orderId,
        String orderReference,
        CustomerResponse customer
) {
}
