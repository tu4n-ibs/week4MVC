package com.example.mvcproduct.Controller;

import com.example.mvcproduct.Model.Product;
import com.example.mvcproduct.Service.ProductService;
import com.example.mvcproduct.Service.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "createProductServlet", urlPatterns = "/products-create")
public class createProductServlet extends HttpServlet {
    ProductService productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            req.getRequestDispatcher("Product/create.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String price = req.getParameter("price");
        String describe = req.getParameter("describe");
        String producer = req.getParameter("producer");

        Product product = new Product(id,name,price,describe,producer);
        this.productService.add(product);

        resp.sendRedirect("/products");
    }
}
