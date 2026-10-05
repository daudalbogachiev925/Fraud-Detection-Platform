-- Сумма > среднее + 3σ по клиенту
WITH stats AS (
    SELECT client_id, AVG(amount) AS m, STDDEV(amount) AS s
    FROM transactions GROUP BY client_id
)
SELECT t.id, t.amount
FROM transactions t
JOIN stats s ON s.client_id = t.client_id
WHERE t.amount > s.m + 3 * s.s;
