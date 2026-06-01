package net.yahya.ecommerce.product;

import jakarta.persistence.EntityNotFoundException;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import net.yahya.ecommerce.exception.ProductPurchaseException;
import org.jspecify.annotations.Nullable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ProductService {
   private final ProductRepository repository;
   private final productMapper mapper;

    public @Nullable Integer createProduct(@Valid ProductRequest request) {
        var product = mapper.toProduct(request);
        return repository.save(product).getId();
    }

    public @Nullable List<ProductPurchaseResponse> purchaseProducts(@Valid List<ProductPurchaseRequest> requests) {
        var productIds = requests
                .stream()
                .map(ProductPurchaseRequest::productId)
                .toList();
        var storedProducts = repository.findAllById(productIds);
        if (productIds.size() != storedProducts.size()) {
            throw new ProductPurchaseException("One or more products does not exist");
        }
        var sortedRequests = requests
                .stream()
                .sorted((a, b) -> a.productId().compareTo(b.productId()))
                .toList();
        var purchasedProducts = new java.util.ArrayList<ProductPurchaseResponse>();
        for (int i = 0; i < storedProducts.size(); i++) {
            var product = storedProducts.get(i);
            var request = sortedRequests.get(i);
            if (product.getAvailableQuantity() < request.quantity()) {
                throw new ProductPurchaseException("Insufficient stock for product with ID " + product.getId());
            }
            var newAvailableQuantity = product.getAvailableQuantity() - request.quantity();
            product.setAvailableQuantity(newAvailableQuantity);
            repository.save(product);
            purchasedProducts.add(mapper.toProductPurchaseResponse(product, request.quantity()));
        }
        return purchasedProducts;
    }

    public ProductResponse findById(Integer productId) {
        return repository.findById(productId).map(mapper::toProductResponse).orElseThrow(()-> new EntityNotFoundException("Product not found with ID " + productId));
    }

    public @Nullable List<ProductResponse> findAll() {
        return repository.findAll().stream().map(mapper::toProductResponse).collect(Collectors.toList());
    }
}
