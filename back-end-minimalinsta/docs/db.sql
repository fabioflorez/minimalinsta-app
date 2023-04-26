CREATE DATABASE instasimple;
USE instasimple;

CREATE TABLE users (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE posts (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    image VARCHAR(100) NOT NULL,
    description VARCHAR(5000),
    userId INT UNSIGNED NOT NULL,
    FOREIGN KEY (userId) REFERENCES users (id) ON DELETE CASCADE,
    creationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE likes (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    userId INT UNSIGNED NOT NULL,
    postId INT UNSIGNED NOT NULL,
    FOREIGN KEY (userId) REFERENCES users (id) ON DELETE CASCADE,
    FOREIGN KEY (postId) REFERENCES posts (id) ON DELETE CASCADE
);
