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
import java.util.List;

@WebServlet(value = "/products-search")
public class searchProductServlet extends HttpServlet {
    ProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String q = req.getParameter("q");
        List<Product> productList = productService.getAll();
        if (q != null && !q.isEmpty()){
            productList = productService.findByName(q);
        }
        req.setAttribute("list", productList);
        req.getRequestDispatcher("Product/search.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("Product/list.jsp");
        dispatcher.forward(req,resp);
    }
}
