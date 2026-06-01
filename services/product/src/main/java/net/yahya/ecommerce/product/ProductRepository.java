package net.yahya.ecommerce.product;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.support.JpaRepositoryConfigurationAware;

public interface ProductRepository extends JpaRepository<Product, Integer> {
}
