SELECT 
    client.NAME, COUNT(project.id) AS PROJECT_COUNT
FROM
    client
        JOIN
    project ON client.id = project.client_id
GROUP BY client.id
HAVING project_count = (SELECT 
        MAX(project_count)
    FROM
        (SELECT 
            COUNT(project.id) AS project_count
        FROM
            client
        JOIN project ON client.id = project.client_id
        GROUP BY client.id) AS project_counts);
