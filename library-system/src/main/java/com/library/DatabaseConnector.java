package com.library;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnector {
    private static final String DB_URL = "jdbc:sqlite:" + System.getProperty("user.dir") + "/library-system/library.db";

    public static Connection connect() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(DB_URL);
            System.out.println("Зв'язок з бібліотекою НУВГП встановлено!");
        } catch (SQLException e) {
            System.out.println("Помилка підключення: " + e.getMessage());
        }
        return conn;
    }
}