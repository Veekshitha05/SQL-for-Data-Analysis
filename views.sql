CREATE VIEW view_salespeople_with_region AS
SELECT 
    p.Salesperson,
    p.SPID,
    p.Team,
    p.Location,
    g.Region
FROM people p
LEFT JOIN geo g ON p.Location = g.Geo;
