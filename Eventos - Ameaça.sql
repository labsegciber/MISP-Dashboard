SELECT 
    'threat_levels.name’, 
    COUNT(*) AS 'count’ 
FROM 
    'events’ 
LEFT JOIN 
    'threat_levels' ON 'events.threat_level_id' = 'threat_levels.id’ 
GROUP BY 
    'threat_levels.name’ 
ORDER BY 
    'count' DESC
