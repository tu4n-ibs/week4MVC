package com.example.quanlykhachhang.service;

import com.example.quanlykhachhang.model.Customer;
import com.example.quanlykhachhang.service.CustomerService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private static Map<Integer, Customer> customerMap;

    static {
        customerMap = new HashMap<>();
        customerMap.put(1, new Customer(1, "John", "john@gmail.com", "HaNoi"));
        customerMap.put(2, new Customer(1, "Phil", "phil@gmail.com", "HaGiang"));
        customerMap.put(3, new Customer(1, "cold", "cold@gmail.com", "HaTinh"));
        customerMap.put(4, new Customer(1, "Dias", "dias@gmail.com", "HaTay"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customerMap.values());
    }

    @Override
    public void save(Customer customer) {
        customerMap.put(customer.getId(), customer);
    }

    @Override
    public Customer findById(int id) {
        return customerMap.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customerMap.put(id, customer);
    }

    @Override
    public void remove(int id) {
        customerMap.remove(id);
    }
}
