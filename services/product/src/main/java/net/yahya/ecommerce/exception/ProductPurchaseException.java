package net.yahya.ecommerce.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;

public class ProductPurchaseException extends RuntimeException {
    public ProductPurchaseException(String message) {
        super(message);
    }
}
