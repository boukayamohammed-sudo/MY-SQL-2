CREATE DATABASE code_db;
USE code_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (name, email) VALUES
('Ahmed', 'ahmed@gmail.com'),
('Sara', 'sara@gmail.com'),
('Youssef', 'youssef@gmail.com'),
('Imane', 'imane@gmail.com'),
('Khalid', 'khalid@gmail.com');

    CREATE TABLE articles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO articles (user_id, title, content) VALUES
(1, 'Premier article', 'Voici le contenu du premier article'),
(2, 'Article sur la technologie', 'Contenu sur la technologie et les innovations'),
(3, 'Conseils santé', 'Quelques conseils pour une vie saine'),
(4, 'Sport et motivation', 'Le sport est essentiel pour le corps et l’esprit'),
(5, 'Apprendre le PHP', 'Introduction au développement web avec PHP');

CREATE TABLE comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    article_id INT NOT NULL,
    user_id INT NOT NULL,
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (article_id) REFERENCES articles(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO comments (article_id, user_id, comment) VALUES
(1, 2, 'مقال مفيد بزاف، شكراً'),
(2, 1, 'عجبني الموضوع ديال التكنولوجيا'),
(3, 4, 'نصائح زوينة و مهمة'),
(4, 3, 'تحفيز رائع، استمر'),
(5, 5, 'شرح بسيط و واضح، شكراً');
