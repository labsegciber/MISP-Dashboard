SELECT 
    organisations.name AS OrgName, 
    COUNT(*) events 
FROM 
    events 
LEFT JOIN organisations ON events.orgc_id = organisations.id 
LEFT OUTER JOIN servers ON events.orgc_id = servers.remote_org_id 
WHERE 
    servers.remote_org_id IS NULL 
GROUP BY 
    organisations.id 
ORDER BY COUNT(*) DESC 
