USE code_db;

-- Question 1: Liste des commentaires pour chaque article avec le nom de l'utilisateur
-- Objectif: Afficher toutes les commentaires pour chaque article afin de pouvoir les afficher sur la page “Commentaires par article”

SELECT a.title AS article, u.name AS utilisateur, c.comment, c.created_at
FROM comments c
JOIN articles a ON c.article_id = a.id
JOIN users u ON c.user_id = u.id
ORDER BY a.id, c.id;

-- Question 2: Nombre d'articles par utilisateur
-- Objectif: Calculer le nombre d'articles par utilisateur pour savoir quel utilisateur est le plus actif

SELECT u.name AS utilisateur, COUNT(a.id) AS nb_articles
FROM users u
LEFT JOIN articles a ON u.id = a.user_id
GROUP BY u.id;

-- Question 4: Quels sont les commentaires écrits par Sara ?
SELECT a.title AS article, c.comment, c.created_at
FROM comments c
JOIN users u ON c.user_id = u.id
JOIN articles a ON c.article_id = a.id
WHERE u.name = 'Sara';

