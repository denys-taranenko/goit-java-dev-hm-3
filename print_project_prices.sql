SELECT 
    p.ID,
    SUM(salary * TIMESTAMPDIFF(MONTH,
        p.start_date,
        p.finish_date)) AS PRICE
FROM
    project_worker w
        JOIN
    project p ON w.project_id = p.ID
        JOIN
    worker wr ON w.worker_id = wr.ID
GROUP BY p.ID
ORDER BY PRICE DESC
LIMIT 0 , 1000;
