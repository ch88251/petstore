package petstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import petstore.domain.Cart;
import petstore.domain.CartStatus;

public interface CartRepository extends JpaRepository<Cart, Long> {
    List<Cart> findByStatus(CartStatus status);
    List<Cart> findByStatusAndCustomerId(CartStatus status, Long customerId);
}
