package petstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import petstore.domain.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
    Customer findByEmail(String email);
    Customer findByPhoneNumber(String phoneNumber);
    List<Customer> findAllByEnabled(Boolean enabled);
}
