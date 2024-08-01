SELECT 
    tags.name AS TagName, 
    organisations.name AS OrgName, 
    COUNT (*) tag 
FROM 
    events 
LEFT JOIN organisations ON events.org_id = organisations.id
LEFT JOIN event_tags ON events.id = Event_tags.event_id 
LEFT JOIN tags ON event_tags.tag_id = tags.id 
GROUP BY 
    TagName, OrgName
ORDER BY tag DESC
