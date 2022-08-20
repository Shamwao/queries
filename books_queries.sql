INSERT INTO books (title, last_name) 
VALUES ('Jane', 'Amsden'), ('Emily', 'Dixon'), ('Theodore', 'Dostoevsky'), ('William','Shapiro'), ('Lao','Xiu');

INSERT INTO books (title, num_of_pages) 
VALUES ('C Sharp', 530), ('Java', 421), ('Python', 665), ('PHP', 460), ('Ruby', 510);

UPDATE books
SET title = 'C#' WHERE title ='C Sharp';

UPDATE users 
SET first_name = 'Bill' WHERE id = 4;

INSERT INTO favorites (book_id, user_id) 
VALUES (1, 1), (2, 1);

INSERT INTO favorites (book_id, user_id) 
VALUES (1, 2), (2, 2), (3, 2);

INSERT INTO favorites (book_id, user_id) 
VALUES (1, 3), (2, 3), (3, 3), (4,3);

INSERT INTO favorites (book_id, user_id) 
VALUES (1, 4), (2, 4), (3, 4), (4, 4), (5, 4);

SELECT first_name, last_name FROM users
JOIN favorites ON users.id = favorites.user_id
WHERE favorites.book_id = 3;

DELETE from favorites
WHERE book_id = 3 AND user_id = 2;

INSERT INTO favorites (book_id, user_id)
VALUES (2, 5);

SELECT title FROM books
JOIN favorites ON books.id = favorites.book_id
WHERE user_id = 3 ;

SELECT first_name, last_name FROM users
JOIN favorites ON users.id = favorites.user_id
WHERE book_id = 5;


