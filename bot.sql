-- Создание таблицы Пользователь
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(255) UNIQUE,
    registration_date DATE,
    rating INT,
    correct_answers_count INT,
    incorrect_answers_count INT,
    show_nickname BOOLEAN,
    telegram_id INT -- assuming telegram_id is INT
);

-- Создание таблицы Категория
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255)
);

-- Создание таблицы Вопрос
CREATE TABLE Questions (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    question_text TEXT,
    option1 VARCHAR(255),
    option2 VARCHAR(255),
    option3 VARCHAR(255),
    option4 VARCHAR(255),
    correct_option INT, -- assuming the correct option is indicated by an integer (1, 2, 3, 4)
    difficulty INT,
    author VARCHAR(255),
    correct_answers_count INT,
    incorrect_answers_count INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Создание таблицы Жалобы
CREATE TABLE Complaints (
    complaint_id INT AUTO_INCREMENT PRIMARY KEY,
    description TEXT,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Users(user_id)
);