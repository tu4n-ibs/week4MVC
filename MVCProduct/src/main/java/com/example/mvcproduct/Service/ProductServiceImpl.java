package com.example.mvcproduct.Service;

import com.example.mvcproduct.Model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{

    private static List<Product> products;

    public ProductServiceImpl(){
        products = new ArrayList<>();
        products.add(new Product(1,"iphoneX","dien thoai","10000","apple"));
        products.add(new Product(2,"iphone11","dien thoai","20000","apple"));
        products.add(new Product(3,"iphone12","dien thoai","30000","apple"));
        products.add(new Product(4,"iphone13","dien thoai","40000","apple"));
    }

    @Override
    public List<Product> getAll() {
        return products;
    }

    @Override
    public void add(Product newProduct) {
        products.add(newProduct);
    }

    @Override
    public Product findById(int id) {
        for (Product product: products){
            if (product.getId() == id){
                return product;
            }
        }
        return null;
    }

    @Override
    public List<Product> findByName(String name) {
       List<Product> list = new ArrayList<>();
        for (Product product: products){
            if (product.getName().contains(name)){
                list.add(product);
            }
        }
        return list;
    }

    @Override
    public boolean update(int id, Product product) {
        Product productUpdate = findById(id);

        if (productUpdate == null) return false;

        productUpdate.setId(product.getId());
        productUpdate.setName(product.getName());
        productUpdate.setPrice(product.getPrice());
        productUpdate.setDescribe(product.getDescribe());
        productUpdate.setProducer(product.getProducer());
        return true;
    }

    @Override
    public boolean delete(int id) {
        Product product = findById(id);
        if (product == null) return false;
        products.remove(product);
        return true;
    }
}
