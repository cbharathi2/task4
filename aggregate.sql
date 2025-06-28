USE library_db;
SELECT c.category_name, COUNT(b.book_id) AS total_books
FROM books b
JOIN categories c ON b.category_id = c.category_id
GROUP BY c.category_name;
SELECT a.name AS author_name, SUM(b.copies_available) AS total_copies
FROM books b
JOIN authors a ON b.author_id = a.author_id
GROUP BY a.name;
SELECT c.category_name, AVG(b.copies_available) AS avg_copies
FROM books b
JOIN categories c ON b.category_id = c.category_id
GROUP BY c.category_name;
SELECT m.name AS member_name, COUNT(l.loan_id) AS books_borrowed
FROM loans l
JOIN members m ON l.member_id = m.member_id
GROUP BY m.name;
