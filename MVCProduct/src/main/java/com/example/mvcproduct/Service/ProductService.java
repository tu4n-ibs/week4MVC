package com.example.mvcproduct.Service;

import com.example.mvcproduct.Model.Product;

import java.util.List;

public interface ProductService {
   List<Product> getAll();
   void add(Product product);
   Product findById(int id);
   List<Product> findByName(String name);
   boolean update(int id, Product product);
   boolean delete(int id);
}
