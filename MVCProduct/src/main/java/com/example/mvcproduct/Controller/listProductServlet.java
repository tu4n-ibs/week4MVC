package com.example.mvcproduct.Controller;

import com.example.mvcproduct.Model.Product;
import com.example.mvcproduct.Service.ProductService;
import com.example.mvcproduct.Service.ProductServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "listProductServlet", value = "/products")
public class listProductServlet extends HttpServlet {
    ProductService productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> list = this.productService.getAll();
        req.setAttribute("list",list);
        RequestDispatcher dispatcher = req.getRequestDispatcher("Product/list.jsp");
        dispatcher.forward(req,resp);
    }
}
