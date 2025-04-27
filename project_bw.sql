create database bw1;

use bw1;

select * from books_data;



-- 1. **Find the number of books available in stock.**
SELECT SUM(availability) AS total_books_in_stock FROM books_data;

-- 2. **List the top 5 most expensive books.**
SELECT title, `Price (Â£)`
FROM books_data
ORDER BY `Price (Â£)` DESC
LIMIT 5;

-- 3. **Find the average rating of books.**
SELECT ROUND(AVG(rating), 2) AS average_rating FROM books_data;

-- 4. **Retrieve the total number of books for each rating (e.g., 1-star, 2-star, etc.).**
SELECT rating, COUNT(*) AS total_books
FROM books_data
GROUP BY rating
ORDER BY rating;

-- 5. Find the number of books with a 5-star rating and in stock
SELECT COUNT(*) AS five_star_in_stock
FROM books_data
WHERE rating = 5 AND availability > 0;

-- 6. Find the average price of books by rating
SELECT rating, ROUND(AVG(`Price (Â£)`), 2) AS avg_price
FROM books_data
GROUP BY rating
ORDER BY rating;

-- 7. Find the most common price among all books
SELECT `Price (Â£)`, COUNT(*) AS frequency
FROM books_data
GROUP BY `Price (Â£)`
ORDER BY frequency DESC
LIMIT 1;

-- 8. Find books that are out of stock
SELECT title, `Price (Â£)`, rating
FROM books_data
WHERE availability = 0;

-- 




