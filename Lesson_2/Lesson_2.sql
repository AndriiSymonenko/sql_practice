-- task 2.1
SELECT DISTINCT amount
FROM book


-- task 2.2
SELECT
    author Автор,
    COUNT(amount) Различных_книг,
    SUM(amount) Количество_экземпляров
FROM book
GROUP BY author


-- task 2.3
SELECT
    author,
    MIN(price) AS Минимальная_цена,
    MAX(price) AS  Максимальная_цена,
    AVG(price) AS Средняя_цена
FROM book
GROUP BY author


-- task 2.4
SELECT
    author,
    SUM(price * amount) AS Стоимость,
    ROUND(SUM((price * amount) * 0.18 / 1.18), 2) AS  НДС,
    ROUND(SUM((price * amount)/1.18),2) AS Стоимость_без_НДС
FROM book
GROUP BY author


-- task 2.5
SELECT
    MIN(price) AS Минимальная_цена,
    MAX(price) AS Максимальная_цена,
    ROUND(AVG(price), 2) AS Средняя_цена
FROM book


-- task 2.6
SELECT
    ROUND(AVG(price),2) AS Средняя_цена,
    SUM(price * amount) AS Стоимость
FROM book
WHERE
    amount BETWEEN 5 and 14


SELECT
    author,
    SUM(price * amount) AS Стоимость
FROM book
WHERE
    title <> 'Идиот' AND title <> 'Белая гвардия'
GROUP BY author
HAVING SUM(price * amount) > 5000
ORDER BY author DESC
