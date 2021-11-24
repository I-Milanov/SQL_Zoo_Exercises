SELECT player
FROM goal JOIN game ON (goal.matchid=game.id)
WHERE stadium = 'National Stadium, Warsaw'