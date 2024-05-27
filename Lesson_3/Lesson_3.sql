-- task 3.1
SELECT
    author,
    title,
    price
FROM book
WHERE price <= (
    SELECT AVG(price)
    FROM book
    )
ORDER BY price DESC


-- task 3.2
SELECT
    author,
    title,
    price
FROM book
WHERE price <= (SELECT MIN(price) + 150 FROM book)
ORDER BY price


-- task 3.3
SELECT
    author,
    title,
    amount
FROM book
WHERE amount IN (
    SELECT amount
    FROM book
    GROUP BY amount
    HAVING COUNT(*) = 1
    );


-- task 3.4
SELECT
    author,
    title,
    price
FROM book
WHERE price < ANY (
    SELECT MIN(price)
    FROM book
    GROUP BY author
    );


-- task 3.5
SELECT
    title,
    author,
    amount,
    (SELECT MAX(amount) FROM book) - amount AS Заказ
FROM
    book
WHERE
    amount < (SELECT MAX(amount) FROM book)
