DROP TABLE IF EXISTS info;
DROP TABLE IF EXISTS game;
DROP TABLE IF EXISTS publisher;

CREATE TABLE publisher
(
    publisher_id INT PRIMARY KEY NOT NULL,
    publisher_name VARCHAR(100) NOT NULL
);

CREATE TABLE game
(
    game_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(255),
    year INT,
    platform VARCHAR(50),
    genre VARCHAR(50),
    publisher_id INT NOT NULL,
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id)
);

create table info
(
    info_id INT PRIMARY KEY NOT NULL,
    game_id INT NOT NULL,
    global_sale_millions DECIMAL(10, 2),
    critic_score DECIMAL(5, 2),
    user_score DECIMAL(5, 2),
    rating VARCHAR(5),
    FOREIGN KEY (game_id) REFERENCES game(game_id)
);
