package com.library;

import static spark.Spark.*;

public class App {
    public static void main(String[] args) {
        port(4567);

        // Вказуємо папку для статичних файлів (HTML, CSS)
        staticFiles.location("/public");

        // Головний маршрут просто віддає наш файл index.html
        get("/", (req, res) -> {
            res.redirect("/index.html");
            return null;
        });

        System.out.println("Сервер працює: http://localhost:4567");
    }
}