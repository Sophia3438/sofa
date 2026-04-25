-- 1. Таблиця факультетів
CREATE TABLE IF NOT EXISTS faculties (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

-- 2. Таблиця відвідувачів (тільки Студент та Викладач)
CREATE TABLE IF NOT EXISTS visitors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    ticket_number TEXT NOT NULL UNIQUE,
    faculty_id INTEGER,
    category TEXT CHECK(category IN ('Студент', 'Викладач')),
    FOREIGN KEY (faculty_id) REFERENCES faculties(id)
);

-- 3. Таблиця візитів 
CREATE TABLE IF NOT EXISTS visits (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    visitor_id INTEGER,
    entry_time TEXT DEFAULT (datetime('now', 'localtime')),
    FOREIGN KEY (visitor_id) REFERENCES visitors(id)
);