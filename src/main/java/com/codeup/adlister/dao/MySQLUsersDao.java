package com.codeup.adlister.dao;

import com.codeup.adlister.Config;
import com.codeup.adlister.models.User;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao (Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(config.getUrl(), config.getUsername(), config.getPassword());

        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database", e);
        }

    }

    @Override
    public User findByUsername(String username) throws SQLException {
        PreparedStatement stmt;
        User user = null;
        try {
            String sql = "SELECT * FORM users WHERE username = ?;";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, username);
            ResultSet rs stmt.setString(1, username);
            user = extractUser(rs)
            return extractUser(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the db", e);

        }
        return user;
    }

    private User extractUser(ResultSet rs) throws SQLException {
        if (!rs.next()) return null;
        return new User(
                rs.getLong("id"),
                rs.getString("username"),
                rs.getString("email"),
                rs.getString("password")
        );
    }

    @Override
    public Long insert(User user) {
        long id = -1;
        try {
            PreparedStatement stmt = connection.prepareStatement(getInsertQuery(), Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getPassword());
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            id = rs.getLong(1);

        } catch (SQLException e) {
            System.err.printf(e.getMessage());
        }
        return null;
    }

    private String getInsertQuery() {
        return "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
    }
}
