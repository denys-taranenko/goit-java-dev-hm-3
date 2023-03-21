SELECT 
    *
FROM
    project
WHERE
    client_id = (SELECT 
            MAX(client_id)
        FROM
            project);