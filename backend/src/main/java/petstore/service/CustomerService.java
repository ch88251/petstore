package petstore.service;

import java.util.List;
import java.util.stream.Collectors;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;
import lombok.extern.slf4j.Slf4j;
import petstore.domain.Customer;
import petstore.repository.CustomerRepository;
import petstore.web.dto.CustomerDto;

@Slf4j
@ApplicationScoped
@Transactional
public class CustomerService {

    @Inject
    CustomerRepository customerRepository;

    public static CustomerDto mapToDto(Customer customer) {
        return new CustomerDto(
            customer.getId(), 
            customer.getFirstName(), 
            customer.getLastName(),
            customer.getEmail(), 
            customer.getPhoneNumber(),
            AddressService.mapToDto(customer.getAddress()),
            customer.getEnabled());
    }

    public List<CustomerDto> getAllCustomers() {
        return customerRepository.findAll().stream()
            .map(CustomerService::mapToDto)
            .collect(Collectors.toList());
    }
}
