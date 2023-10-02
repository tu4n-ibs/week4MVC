package com.example.usermanager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBC {
    private String username = "root";
    private String password = "password";
    private String connectionURL = "jdbc:mysql://localhost:3306/demo";
    public Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(connectionURL,username,password);
        return connection;
    }
}
