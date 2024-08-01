SELECT 
    'Organisations.name' AS 'OrgName', 
    COUNT(*) AS 'count' 
FROM 
    'events' 
LEFT JOIN 
    'organisations' ON 'events.org_id' = 'organisations.id' 
GROUP BY 
    'OrgName' 
ORDER BY 
    'count' DESC, 
    'OrgName' ASC
