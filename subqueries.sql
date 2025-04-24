SELECT Team, COUNT(*) AS TeamSize
FROM (
    SELECT Team
    FROM people
    WHERE Team <> ''
) AS team_list
GROUP BY Team;

