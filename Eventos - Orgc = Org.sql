SELECT 
    'organisations.name' AS 'OrgName’, 
    COUNT(*) AS 'count’ 
FROM 
    'events’ 
WHERE 
    'events.org_id' = 'events.orgc_id’ 
LEFT JOIN 
    'organisatoins' ON 'events.org_id' = 'organisations.id’ 
GROUP BY 
    'organisations.name’ 
ORDER BY 'count' DESC, 'organisations.name' ASC
