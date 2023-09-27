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

@WebServlet(value = "/products-detail")
public class detailProductServlet extends HttpServlet {
    ProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = this.productService.findById(id);
        req.setAttribute("list",product);
        req.getRequestDispatcher("Product/detail.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("Product/list.jsp");
        dispatcher.forward(req,resp);
    }
}
