import { useState, useEffect } from 'react';
import Table from 'react-bootstrap/Table';
import Button from 'react-bootstrap/Button';

import 'bootstrap/dist/css/bootstrap.min.css';
import './style.css';

const CustomerList = () => {

  const [customers, setCustomers] = useState([]);

  useEffect(() => {
    fetch('http://localhost:8080/api/customer')
      .then(response => response.json())
      .then(data => setCustomers(data))
      .catch(error => console.error('Error fetching customer data:', error));
  }, []);

  return (
    <>
      <div class="container">
      <h1>Customer List</h1>
      <Table striped bordered hover>
        <thead>
          <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address 1</th>
            <th>Address 2</th>
            <th>City</th>
            <th>State</th>
            <th>Zip Code</th>
          </tr>
        </thead>
        <tbody>
          {customers.map(customer => (
            <tr>
              <td>{customer.firstName}</td>
              <td>{customer.lastName}</td>
              <td>{customer.email}</td>
              <td>{customer.phoneNumber}</td>
              <td>{customer.address.address1}</td>
              <td>{customer.address.address2}</td>
              <td>{customer.address.city}</td>
              <td>{customer.address.state}</td>
              <td>{customer.address.zipCode}</td>
            </tr>
          ))}
        </tbody>
      </Table>
      <div className="btn-panel">
        <Button variant="primary">Previous</Button> 
        <Button variant="primary">Next</Button> 
      </div>
      </div>
    </>
  );
};

export default CustomerList;

