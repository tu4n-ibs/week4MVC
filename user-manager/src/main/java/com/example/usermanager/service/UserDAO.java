package com.example.usermanager.service;

import com.example.usermanager.JDBC;
import com.example.usermanager.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUserDAO {
    JDBC jdbc = new JDBC();

    @Override
    public void insertUser(User user) throws SQLException, ClassNotFoundException {
        Connection connection = jdbc.getConnection();
        String query = "insert into users (name, email,country) values(?,?,?)";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, user.getName());
        preparedStatement.setString(2, user.getEmail());
        preparedStatement.setString(3, user.getCountry());
        preparedStatement.executeUpdate();
    }

    @Override
    public User findUserById(int id) throws SQLException, ClassNotFoundException {
        User user = null;
        Connection connection = jdbc.getConnection();
        String query = "select id,name,email,country from users where id = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setInt(1, id);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            String name = resultSet.getString("name");
            String email = resultSet.getString("email");
            String country = resultSet.getString("country");
            user = new User(id, name, email, country);
        }
        return user;
    }

    @Override
    public List<User> selectAllUsers() throws SQLException, ClassNotFoundException {
        List<User> users = new ArrayList<>();
        Connection connection = jdbc.getConnection();
        String query = "select * from users";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            String email = resultSet.getString("email");
            String country = resultSet.getString("country");
            users.add(new User(id, name, email, country));
        }
        return users;
    }

    @Override
    public boolean deleteUser(int id) throws SQLException, ClassNotFoundException {
        boolean rowDelete;
        Connection connection = jdbc.getConnection();
        String query = "delete from users where id = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setInt(1, id);
        rowDelete = preparedStatement.executeUpdate() > 0;
        return rowDelete;
    }

    @Override
    public boolean updateUser(User user) throws SQLException, ClassNotFoundException {
        boolean rowUpdate;
        Connection connection = jdbc.getConnection();
        String query = "update users set name =?, email =?, country =? where id = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, user.getName());
        preparedStatement.setString(2, user.getEmail());
        preparedStatement.setString(3, user.getCountry());
        preparedStatement.setInt(4, user.getId());

        rowUpdate = preparedStatement.executeUpdate() > 0;
        return rowUpdate;
    }

    @Override
    public List<User> searchByName(String keyWord) {

        return null;
    }
}

