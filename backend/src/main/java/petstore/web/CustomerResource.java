package petstore.web;

import java.util.List;

import jakarta.inject.Inject;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;

import petstore.service.CustomerService;
import petstore.web.dto.CustomerDto;

@Path("/customer")
public class CustomerResource {

  @Inject
  CustomerService customerService;

  @GET
  public List<CustomerDto> getAllCustomers() {
    return customerService.getAllCustomers();
  }

}
