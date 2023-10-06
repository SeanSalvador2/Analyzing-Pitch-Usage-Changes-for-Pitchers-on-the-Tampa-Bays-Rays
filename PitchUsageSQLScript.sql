SELECT
    p1.playerID,
    p1.yearID,
    p1.teamID,
    p1.stint,
    p1.IPouts / 3 AS InningsPitched,
    p1.ERA,
    ((13 * p1.HR) + (3 * p1.BB) - (2 * p1.SO)) / p1.IPouts + 3.2 AS FIP
FROM
    pitching p1
JOIN
    pitching p2 ON p1.playerID = p2.playerID
WHERE
    p1.yearID >= 2015
    AND p1.yearID <= 2019
    AND p1.yearID = p2.yearID + 1
ORDER BY
    p1.playerID,
    p1.yearID;

