-- task 1.1
SELECT
    author,
    title,
    price
FROM


    book -- task 1.2
SELECT
    title as Название,
    author as Автор
FROM


    book -- task 1.3
SELECT
    title,
    amount,
    1.65 * amount as pack
FROM
    book;


-- task 1.4
SELECT
    title,
    author,
    amount,
    round(price * 0.7, 2) as new_price
FROM
    book;


-- task 1.5
SELECT
    author,
    title,
    ROUND(
        IF(
            author = 'Булгаков М.А.',
            price * 1.1,
            IF(author = 'Есенин С.А.', price * 1.05, price)
        ),
        2
    ) AS new_price
FROM
    book


-- task 1.5
SELECT
    title,
    author,
    title,
    price
FROM
    book
WHERE
    amount < 10


-- task 1.6
SELECT
    author,
    price,
    amount
FROM
     book
WHERE
    500 < price < 600 AND (price * amount) >= 5000


-- task 1.7
SELECT
    title,
    author
FROM
    book
WHERE
    price BETWEEN 540.50 AND 800
    AND amount IN(2, 3, 5, 7)


-- task 1.8
SELECT
    author,
    title
FROM
    book
WHERE
    amount BETWEEN 2 AND 14
ORDER BY
    author DESC, title


-- task 1.9
SELECT
    title,
    author
FROM
    book
WHERE
    title LIKE '_% %'
    AND (
        author LIKE '% С.%'
        OR author LIKE '%%С.'
    )
ORDER BY
    title;
