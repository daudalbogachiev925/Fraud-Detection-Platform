-- > 5 транзакций за 10 минут
SELECT card_id, COUNT(*) AS n
FROM transactions
WHERE ts > NOW() - INTERVAL '10 minutes'
GROUP BY card_id
HAVING COUNT(*) > 5;
